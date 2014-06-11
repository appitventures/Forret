<?php

class Vehicle extends Eloquent {

    protected $table = 'vehicles';
    protected $guarded = ['id'];

    public function type(){
        return $this->belongsTo('Type','type_id');
    }


}