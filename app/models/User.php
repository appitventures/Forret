<?php

use Esensi\Model\Contracts\RelatingModelInterface;
use Esensi\Model\Contracts\SoftDeletingModelInterface;
use Esensi\Model\Contracts\ValidatingModelInterface;
use Esensi\Model\Traits\RelatingModelTrait;
use Esensi\Model\Traits\SoftDeletingModelTrait;
use Esensi\Model\Traits\ValidatingModelTrait;
use Illuminate\Auth\UserInterface;
use Illuminate\Auth\Reminders\RemindableInterface;
use Cartalyst\Sentry\Users\Eloquent\User as SentryUserModel;


class User extends SentryUserModel implements UserInterface, RemindableInterface, ValidatingModelInterface, SoftDeletingModelInterface, RelatingModelInterface{
    use ValidatingModelTrait;
    use SoftDeletingModelTrait;
    use RelatingModelTrait;

    protected $injectUniqueIdentifier = false;
    protected $throwValidationExceptions = true;
    protected $guarded = ['id'];
    protected $softDelete = true;
    protected $table = 'users';
    protected $dates = ['deleted_at'];

    protected $rulesets = [
        'creating' => [
            'email' => ['required','email','unique:users'],
            'password' => ['required','max:30'],
            'first_name' => ['max:9999999999','numeric'],
            'last_name' => ['max:255'],
            'phone_number' => ['max:255'],
            'address1' => ['max:255'],
            'address2' => ['max:255'],
            'city' => ['max:255'],
            'state' => ['max:2','alpha'],
            'zip' => ['max:99999','numeric']
        ]

    ];

    protected $relationships = [
        'groups' => ['belongsToMany','Group','users_groups','user_id']
    ];

    /**
     * Get the unique identifier for the user.
     *
     * @return mixed
     */
    public function getAuthIdentifier()
    {
        return $this->id;
    }

    /**
     * Get the password for the user.
     *
     * @return string
     */
    public function getAuthPassword()
    {
        return $this->password;
    }

    /**
     * Get the token value for the "remember me" session.
     *
     * @return string
     */
    public function getRememberToken()
    {
        return $this->remember_token;
    }

    /**
     * Set the token value for the "remember me" session.
     *
     * @param  string  $value
     * @return void
     */
    public function setRememberToken($value)
    {
        $this->remember_token = $value;
    }

    /**
     * Get the column name for the "remember me" token.
     *
     * @return string
     */
    public function getRememberTokenName()
    {
        return 'remember_token';
    }

    /**
     * Get the e-mail address where password reminders are sent.
     *
     * @return string
     */
    public function getReminderEmail()
    {
        return $this->email;
    }
}