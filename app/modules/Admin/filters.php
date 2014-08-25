<?php

Route::filter('admin.auth', function ()
{
    if (!Sentry::check())
        return Redirect::to('/admin/login');
});

Route::filter('admin', function ()
{
    if(!Sentry::check() || !Sentry::getUser()->groups->contains(Sentry::findGroupByName('Admins')))
        return Redirect::to('/admin/login');
});

Route::filter('api', function ()
{
    API::be(Sentry::getUser());
});
