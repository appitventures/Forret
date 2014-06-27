<?php namespace Controllers\Frontend;

use Illuminate\Routing\Controller;
use View;

/**
 * Class BaseController
 */
class BaseController extends Controller {

    /**
     *
     */
    public function __construct() {

    }

    /**
     * Setup the layout used by the controller.
     *
     * @return void
     */

    protected function setupLayout() {
        if (!is_null($this->layout)) {
            $this->layout = View::make($this->layout);
        }
    }

}