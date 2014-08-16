<?php

Route::filter('admin.auth', function(){
    if (!Sentry::check()) return Redirect::to('/admin/login');
});