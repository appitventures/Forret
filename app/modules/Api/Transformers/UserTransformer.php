<?php namespace Api\Transformers;

use League\Fractal\TransformerAbstract;
use User;

class UserTransformer extends TransformerAbstract
{
    public function transform(User $user)
    {
        return [
            'id'            => (int) $user->id, // hashid ? uuid ?
            'first_name'    => $user->first_name,
            'last_name'     => $user->last_name,
            'email'         => $user->email,
            'phone'         => $user->phone_number,
            'state'         => $user->state,
            'activated'     => (bool) $user->activated,
            'links'         => [
                [
                    'rel'   => 'self',
                    'uri'   => '/users/'. $user->id
                ]
            ]
        ];
    }
}
