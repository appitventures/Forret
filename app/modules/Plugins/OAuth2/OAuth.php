<?php namespace Plugins\OAuth2;

use Session;
Use Auth;
use Response;
use AuthorizationServer;
use redirect;
use Input;

class OAuth
{

    protected $statusCode = 200;

    /**
     * @return mixed
     */
    public function getStatusCode()
    {
        return $this->statusCode;
    }

    /**
     * @param mixed $statusCode
     * @return $this
     */
    public function setStatusCode($statusCode)
    {
        $this->statusCode = $statusCode;
        return $this;
    }

    public function getAuthToken()
    {
        if (Auth::check()) {
            $params = Session::get('authorize-params');

            // get the user id
            $params['user_id'] = Auth::user()->id;

            return $params;
        } else {
            return Response::json('You must be logged in to make this request.', 404);
        }
    }

    public function postAuthToken()
    {
        // get the data from the check-authorization-params filter
        $params = Session::get('authorize-params');

        // get the user id
        $params['user_id'] = Auth::user()->id;

        // check if the user approved or denied the authorization request
        if (Input::get('approve') !== null) {

            $code = AuthorizationServer::newAuthorizeRequest('user', $params['user_id'], $params);
            $approve = 'true';

            Session::forget('authorize-params');

        }

        if (Input::get('deny') !== null) {


            $approve = 'false';
            $code = 'null';

            Session::forget('authorize-params');
        }

        return $data = [
            'params'  => $params,
            'code'    => $code,
            'approve' => $approve
        ];
    }


}