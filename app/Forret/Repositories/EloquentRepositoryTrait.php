<?php  namespace Forret\Repositories;

use Dingo\Api\Exception\ResourceException;
use Illuminate\Database\Eloquent\Model;

trait EloquentRepositoryTrait {
    /** @var \Eloquent */
     private $model;

     public function __construct(Model $model){
         $this->model = $model;
     }
    public function findById($model_id){
        return $this->model->findOrFail($model_id);
    }
    public function findByAttributes(array $input){
        $models = $this->model;
        foreach($input as $field => $search_term){
            $models = $models->where($field,'=',$search_term);
        }
        return $models->get();
    }
    public function search(array $input){
        $models = $this->model;
        foreach($input as $field => $search_term){
            $models = $models->where($field,'LIKE',"%$search_term%");
        }
        return $models->get();
    }
    public function createnew(array $attributes){
        $this->model->create($attributes);
    }
    public function deleteById($model_id){
        $this->findById($model_id)->delete();
    }
    public function findByIdWithRelated($model_id, array $relations){
        $return = $this->model;
        return $return->where($relations)->find($model_id);

    }
    public function updateExisting($model_id,array $attributes){
        return $this->model->find($model_id)->update($attributes);
    }
    public function undestroy($model_id){
        $return = $this->model->withTrashed()->find($model_id);
        if($return->trashed()){
            $return->restore();
            return $this->findById($model_id);
        }
        throw new ResourceException('User Not Found');
    }
}