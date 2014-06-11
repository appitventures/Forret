<?php
class Group extends Eloquent{
    protected $guarded = ['id'];
    protected $softDelete = true;
    protected $table = 'groups';

    public function users(){
        return $this->belongsToMany('User','users_groups','group_id','user_id');
    }
}