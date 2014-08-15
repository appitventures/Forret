<?php

Route::post('queue/post', function () {return Queue::marshal();});

Route::api(['version'=>'v1','prefix'=>'api','namespace'=>'Controllers\Api'],function() {
    include('modules/Api/routes.php');
});
Route::group(['prefix' => 'admin','namespace'=>'Controllers\Admin'], function () {
    include('modules/Admin/routes.php');
});
Route::group(['namespace'=>'Controllers\Frontend'],function(){
    include('modules/Frontend/routes.php');
});