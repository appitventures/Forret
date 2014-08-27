<?php namespace Plugins\OAuth2\Models;

use Eloquent;
use Illuminate\Database\Eloquent\Collection;

class ClientMeta extends Eloquent
{
    protected $table = 'oauth_client_metadata';

    public function newCollection(array $models = array())
    {
        return with(new Collection($models))->keyBy('key');
    }
}
