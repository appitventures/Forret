<?php

use Esensi\Model\Contracts\RelatingModelInterface;
use Esensi\Model\Contracts\SoftDeletingModelInterface;
use Esensi\Model\Contracts\ValidatingModelInterface;
use Esensi\Model\Traits\RelatingModelTrait;
use Esensi\Model\Traits\SoftDeletingModelTrait;
use Esensi\Model\Traits\ValidatingModelTrait;

class Group extends Eloquent implements ValidatingModelInterface, SoftDeletingModelInterface, RelatingModelInterface{
    use ValidatingModelTrait;
    use SoftDeletingModelTrait;
    use RelatingModelTrait;

    protected $injectUniqueIdentifier = false;
    protected $throwValidationExceptions = true;
    protected $guarded = ['id'];
    protected $softDelete = true;
    protected $table = 'groups';
    protected $dates = ['delete_at'];

    protected $rulesets = [
        'creating' => [],
        'updating' => []
    ];

    protected $relationships = [
        'groups' => ['belongsToMany','User','users_groups','group_id']
    ];
}