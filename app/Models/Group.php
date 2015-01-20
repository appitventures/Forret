<?php namespace Forret\Models;

use Illuminate\Database\Eloquent\Model;

/**
 * Forret\Models\Group
 *
 * @property-read \Illuminate\Database\Eloquent\Collection|\Forret\Models\User[] $users
 * @property-read \Illuminate\Database\Eloquent\Collection|\$related[] $morphedByMany
 */
class Group extends Model
{

    protected $guarded = ['id'];

    public function users()
    {
        return $this->belongsToMany('\Forret\Models\User');
    }
}
