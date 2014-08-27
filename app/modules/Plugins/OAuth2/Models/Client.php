<?php namespace Plugins\OAuth2\Models;

use Illuminate\Database\Eloquent\Model as Eloquent;

class Client extends Eloquent
{
    protected $table = 'oauth_clients';

    public $incrementing = false;

    protected $guarded = [];
}
