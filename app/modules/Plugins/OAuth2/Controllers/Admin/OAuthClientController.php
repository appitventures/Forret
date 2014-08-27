<?php namespace Plugins\OAuth2\Controllers\Admin;

use Admin\Controllers\BaseController;
use Dingo\Api\Auth\Shield;
use Dingo\Api\Dispatcher;
use Dingo\Api\Exception\StoreResourceFailedException;
use Appit\Exceptions\ValidationException;
use Respect\Validation\Exceptions\AbstractNestedException;
use View;
use Redirect;
use Input;

class OAuthClientController extends BaseController
{

    protected $api;
    protected $auth;

    public function __construct(Dispatcher $api, Shield $auth)
    {
        $this->api = $api;
        $this->auth = $auth;
    }

    public function index()
    {
        $data['title'] = 'OAuth2 Client Management';
        $data['clients'] = $this->api->get('oauth/clients');
        return View::make('OAuth2::admin.pages.client.index', $data);
    }

    public function create()
    {
        $data['title'] = 'New OAuth2 Client';
        return View::make('OAuth2::admin.pages.client.create', $data);
    }

    public function edit($id)
    {
        $data['title'] = 'Edit OAuth2 Client';
        $data['client'] = $this->api->get('oauth/clients/'. $id);
        return View::make('OAuth2::admin.pages.client.edit', $data);
    }

    public function update($id)
    {
        try {
            $this->api->put('oauth/clients/'. $id, Input::all());
            return Redirect::to('/admin/oauth/clients');
        } catch (Exception $e) {
            return Redirect::back()->withErrors($e->getMessage())->withInput();
        }

    }

    public function store()
    {
        try{
            $this->api->post('oauth/clients/', Input::all());
            return Redirect::to('/admin/oauth/clients');
        } catch (Exception $e) {
            return Redirect::back()->withErrors($e->getMessage())->withInput();
        }
    }

    public function delete($id)
    {
        try {
            $this->api->delete('oauth/clients/'. $id);
            return Redirect::to('/admin/oauth/clients');
        } catch (Exception $e) {
            return Redirect::back()->withErrors($e->getMessage());
        }
    }
}
