<?php

namespace App\Model\Films;

use App\Model\Actors\Actor;
use Nextras\Orm\Entity\Entity;
use Nextras\Orm\Relationships\ManyHasMany;

/**
 * Film
 *
 * @property int                    $id             {primary}
 * @property string                 $name
 * @property string                 $genre
 * @property string                 $direction
 * @property int                    $releaseDate
 * @property int                    $length
 * @property int                    $rating
 * @property string                 $nationalOrigin
 * @property string                 $description
 * @property ManyHasMany|Actor[]    $actors         {m:m Actor::$films, isMain=true}
 */
class Film extends Entity
{

}