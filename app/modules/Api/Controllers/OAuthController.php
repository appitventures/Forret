<?php namespace Api\Controllers;

use AuthorizationServer;
use Session;
use Redirect;
use View;

class OAuthController extends BaseController
{
    public function __construct()
    {
        $this->beforeFilter('check-authorization-params|auth', ['getAuthorize']);
        $this->beforeFilter('check-authorization-params|auth|csrf', ['authorize']);
    }

    public function access_token()
    {
        return AuthorizationServer::performAccessTokenFlow();
    }

    /* WIP */
    public function getAuthorize()
    {
        $params = Session::get('authorize-params');
        $params['user_id'] = Auth::user()->id;
        return View::make('authorization-form', ['params' => $params]);
    }

    /* WIP */
    public function authorize()
    {
        $params = Session::get('authorize-params');

        // get the user id
        $params['user_id'] = Auth::user()->id;

        // check if the user approved or denied the authorization request
        if (Input::get('approve') !== null) {

            $code = AuthorizationServer::newAuthorizeRequest('user', $params['user_id'], $params);

            Session::forget('authorize-params');

            return Redirect::to(AuthorizationServer::makeRedirectWithCode($code, $params));
        }

        if (Input::get('deny') !== null) {

            Session::forget('authorize-params');

            return Redirect::to(AuthorizationServer::makeRedirectWithError($params));
        }
    }
}
