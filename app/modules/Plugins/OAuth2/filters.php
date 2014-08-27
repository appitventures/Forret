<?php

Route::filter('api', function ()
{
    API::be(Sentry::getUser());
});

