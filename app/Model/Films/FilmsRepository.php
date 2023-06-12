<?php

namespace App\Model\Films;

use Nextras\Orm\Repository\Repository;

/**
 * @method Film|NULL getById($id)
 */
class FilmsRepository extends Repository
{
    public static function getEntityClassNames(): array
    {
        // TODO: Implement getEntityClassNames() method.
        return [Film::class];
    }

}