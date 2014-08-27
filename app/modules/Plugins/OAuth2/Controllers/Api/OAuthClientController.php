<?php namespace Plugins\OAuth2\Controllers\Api;

use Api\Controllers\BaseController;
use Plugins\OAuth2\Models\Client;
use Input;


class OAuthClientController extends BaseController
{
    protected $client;

    public function __construct(Client $client)
    {
        $this->client = $client;
    }

    public function index()
    {
        return $this->client->all();
    }

    public function show($id)
    {
        return $this->client->findOrFail($id);
    }

    public function store()
    {
        $data = Input::all();
        if(empty(trim($data['id'])))
            $data['id'] = \Str::random(30);

        if(empty(trim($data['secret'])))
            $data['secret'] = \Str::random(30);

        $this->client->create($data);
        // validate
        // exceptions
    }

    public function update($id)
    {
        $client = $this->client->findOrFail($id);
        $client->update(Input::all());
    }

    public function destroy($id)
    {
        $client = $this->client->findOrFail($id);
        $client->delete();
    }

}
