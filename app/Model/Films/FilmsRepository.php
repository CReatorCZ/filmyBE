<?php

namespace App\Model\Films;

use Nextras\Dbal\Result\Row;
use Nextras\Orm\Repository\Repository;

/**
 * @method Row[] getFilmsByActors(object $filters)
 */
class FilmsRepository extends Repository
{
    public static function getEntityClassNames(): array
    {
        // TODO: Implement getEntityClassNames() method.
        return [Film::class];
    }

}