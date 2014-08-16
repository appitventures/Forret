<?php  namespace Appit\Interfaces;

interface UserInterface extends EloquentInterface {
    /**
     * @return mixed
     */
    public function all();

    /**
     * @return mixed
     */
    public function recent25();

    /**
     * @param $user_id
     * @return mixed
     */
    public function privatePage($user_id);
} 