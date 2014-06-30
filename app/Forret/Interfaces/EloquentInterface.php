<?php

namespace Forret\Interfaces;

interface EloquentInterface {
    /**
     * @param $model_id
     * @return mixed
     */
    public function findById($model_id);

    /**
     * @param array $input
     * @return mixed
     */
    public function findByAttributes(array $input);

    /**
     * @param array $attributes
     * @return mixed
     */
    public function createnew(array $attributes);

    /**
     * @param $model_id
     * @return mixed
     */
    public function deleteById($model_id);

    /**
     * @param $model_id
     * @param array $relations
     * @return mixed
     */
    public function findByIdWithRelated($model_id, array $relations);

    /**
     * @param $model_id
     * @param array $attributes
     * @return mixed
     */
    public function updateExisting($model_id, array $attributes);

    /**
     * @param $model_id
     * @return mixed
     */
    public function undestroy($model_id);
}