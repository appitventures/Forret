<?php namespace Solum\Validation;

use Respect\Validation\Exceptions\AbstractNestedException;
use Respect\Validation\Exceptions\AllOfException;
use Respect\Validation\Exceptions\KeyException;
use Respect\Validation\Exceptions\LengthException;
use Respect\Validation\Exceptions\PhoneException;
use Respect\Validation\Validator as v;
use Solum\Exceptions\ValidationException;

/**
 * Class Validator
 * @package Authority\Validation
 */
abstract class Validator {

    public function validate(v $validator,$data,$errorMessage,$errorFields){
        try {$validator->check($data);}
        catch (AbstractNestedException $e) {
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