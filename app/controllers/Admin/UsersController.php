<?php  namespace Controllers\Admin;
use Dingo\Api\Auth\Shield;
use Dingo\Api\Dispatcher;
use \View;
use Input;

class UsersController extends BaseController {

    protected $api;
    protected $auth;

    public function __construct(Dispatcher $api, Shield $auth)
    {
        $this->api  = $api;
        $this->auth = $auth;
    }

	/**
	 * Display a listing of the resource.
	 * GET /users
	 *
	 * @return Response
	 */
	public function index(){
		$view['users'] = $this->api->get('users');
        $view['title'] = 'User Management';
        return View::make('Admin::pages.users.index',$view);
	}

	/**
	 * Show the form for creating a new resource.
	 * GET /users/create
	 *
	 * @return Response
	 */
	public function create()
	{
		$view['title'] = 'User Management';
        return View::make('Admin::pages.users.create',$view);
	}

	/**
	 * Store a newly created resource in storage.
	 * POST /users
	 *
	 * @return Response
	 */
	public function store()
	{
		//
	}

	/**
	 * Display the specified resource.
	 * GET /users/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{
		//
	}

	/**
	 * Show the form for editing the specified resource.
	 * GET /users/{id}/edit
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 * PUT /users/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 * DELETE /users/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

    public function search(){
        $view['users'] = $this->api->get('users/search',[Input::all()]);
        $view['title'] = 'Search Results';
        return View::make('Admin::pages.users.search',$view);
    }

}