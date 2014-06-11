<?php

// User Login event
Event::listen('user.login', function($userId, $email)
{
    Session::put('userId', $userId);
    Session::put('email', $email);
});

// User logout event
Event::listen('user.logout', function()
{
	Session::flush();
});
