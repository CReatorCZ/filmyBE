<?php

namespace App\Model\Films;

use Nextras\Dbal\QueryBuilder\QueryBuilder;
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