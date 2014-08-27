<?php

View::composer('Admin::components.pageComponents.sidebar', function ($view)
{
    $view->plugins_sidebar .= View::make('OAuth2::admin.components.sidebar');
});
