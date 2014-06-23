<?php namespace Forret\Validation;

use Respect\Validation\Exceptions\AbstractGroupedException;
use Respect\Validation\Exceptions\LengthException;
use Respect\Validation\Exceptions\PhoneException;
use Respect\Validation\Validator as v;
use Forret\Exceptions\ValidationException;

/**
 * Class Validator
 * @package Authority\Validation
 */
abstract class Validator {

    public function validate(v $validator,$data,$errorMessage,$errorFields){
        try {$validator->check($data);}
        catch (AbstractGroupedException $e) {
            $errors = $e->findMessages($errorFields);
            throw new ValidationException($errorMessage,$errors);
        }
        catch(LengthException $e){
            $errors = [$e->getMessage()];
            throw new ValidationException($errorMessage,$errors);
        }
        catch(PhoneException $e){
            $errors = [$e->getMessage()];
            throw new ValidationException($errorMessage,$errors);
        }
    }
}