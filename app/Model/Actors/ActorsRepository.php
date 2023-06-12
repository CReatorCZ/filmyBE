<?php

namespace App\Model\Actors;

use Nextras\Orm\Repository\Repository;

/**
 * @method Actor|NULL getById($id)
 */
class ActorsRepository extends Repository
{
    public static function getEntityClassNames(): array
    {
        return [Actor::class];
    }

}