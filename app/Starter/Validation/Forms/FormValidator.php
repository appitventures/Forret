<?php
namespace Starter\Validation\Forms;

use Air\Exceptions\FormValidationException;
use Illuminate\Validation\Factory as Validator;

abstract class FormValidator {
    protected $validator;
    protected $validation;

    public function __construct(Validator $validator){
        $this->validator = $validator;
    }

    public function validate(array $formData){
        $this->validation = $this->validator->make($formData, $this->getValidationRules());
        if($this->validation->fails()){
            throw new FormValidationException('Validation Failed', $this->getValidationErrors());
        }
        return true;
    }

    protected function getValidationRules() {
        return $this->rules;
    }

    protected  function getValidationErrors() {
        return $this->validation->errors();
    }

} 