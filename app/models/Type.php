<?php

class Type extends Eloquent {
    protected $table = 'types';
    protected $guarded = ['id'];

    public function vehicles(){
        return $this->hasMany('Vehicle','type_id');
    }

    protected static function boot(){
        parent::boot();
    }

    public function getIdAttribute($id){
        return (int) $id;
    }
}