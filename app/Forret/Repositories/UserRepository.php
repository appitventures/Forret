<?php  namespace Forret\Repositories;
use Carbon\Carbon;
use Forret\Interfaces\UserInterface;
use Forret\Mailers\UserMailer;
use Sentry;
use Symfony\Component\HttpKernel\Exception\AccessDeniedHttpException;
use User;


class UserRepository implements UserInterface {
    use EloquentRepositoryTrait;
    /**
     * @var \Eloquent
     */
    private $user;
    /**
     * @var UserMailer
     */
    private $mail;

    /**
     * @param User $user
     * @param UserMailer $mail
     */
    public function __construct(User $user, UserMailer $mail){
        $this->user = $user;
        $this->mail = $mail;
    }

    public function all(){
        return $this->user->all();
    }

    public function createNew(array $attributes){
        $user = Sentry::register($attributes);
        $activationCode = $user->getActivationCode();
        $data = [
            'detail'=>'Account activation mail',
            'name'  => $user['first_name']." ".$user['last_name'],
            'activation_code'=>$activationCode,
            'email'=>$user['email'],
        ];
        $user->addGroup(Sentry::getGroupProvider()->findByName('Users'));
        return $this->manuallyActivate($user->getId());
        #$this->mail->welcome($user,$data);
    }

    public function manuallyActivate($id){
        $user = $this->findById($id);
        $user->update(['activated' => 1,'activated_at' => Carbon::now()->toDateTimeString()]);
        return $user;
    }

    public function recent25(){
        return $this->user->orderBy('created_at','desc')->limit(25)->get();
    }

    public function privatePage($user_id){
        if($user_id != Sentry::getUser()->getId()){
            if(!Sentry::getUser()->inGroup(Sentry::findGroupByName('Admins'))) {
                throw new AccessDeniedHttpException();
            }
        }
    }
} 