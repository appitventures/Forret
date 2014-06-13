<?php  namespace Solum\Repositories;
use Carbon\Carbon;
use Solum\Interfaces\UserInterface;
use Sentry;
use Illuminate\Database\Eloquent\ModelNotFoundException;
use Symfony\Component\HttpKernel\Exception\AccessDeniedHttpException;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use User;
use Solum\Validation\UserValidator;
use Solum\Mailers\UserMailer;


class UserRepository extends BaseRepository implements UserInterface {
    protected $validator;

    public function __construct(User $user, UserValidator $validator, UserMailer $mail){
        $this->user = $user;
        $this->isValid = $validator;
        $this->mail = $mail;
        parent::__construct();
    }

    public function all(){
        return $this->user->all();
    }

    public function find($id){
        try{
            return $this->user->findOrFail($id);
        }
        catch(ModelNotFoundException $e){
            throw new NotFoundHttpException();
        }
    }

    public function createNew($data){
        $this->isValid->forCreate($data);
        $user = Sentry::register([
            'email'    => $data['email'],
            'password' => $data['password']
        ]);
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
        $user = User::find($id);
        $user->activated = 1;
        $user->activated_at = Carbon::now()->toDateTimeString();
        $user->save();
        return $user;
    }

    public function recent25(){
        return User::orderBy('created_at','desc')->limit(25)->get();
    }

    public function update($id,$data){
        $this->isValid->forUpdate($data);
        $user = $this->user->find($id);
        $user->fill($data)->update();
        return $user;
    }
    public function destroy($id){
        $user = Sentry::findUserById($id);
        $user->delete();
    }

    public function getSentryUser($id){
        return Sentry::findUserById($id);
    }

    public function privatePage($user_id){
        if(!Sentry::check()) {
            throw new AccessDeniedHttpException();
        }
        if($user_id != Sentry::getUser()->getId() || !Sentry::getUser()->inGroup(Sentry::getGroupProvider()->findByName('Admins'))) {
            throw new AccessDeniedHttpException();
        }
    }
} 