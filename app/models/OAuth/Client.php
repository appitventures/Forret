<?php namespace OAuth;

use Illuminate\Database\Eloquent\Model as Eloquent;

class Client extends Eloquent
{
    protected $table = 'oauth_clients';

    protected $incrementing = false;

    protected $fillable = [
        'secret',
        'name'
    ];

}
