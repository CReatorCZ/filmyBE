<?php

namespace App\Model\Actors;

use App\Model\Films\Film;
use Nextras\Orm\Entity\Entity;
use Nextras\Orm\Relationships\ManyHasMany;

/**
 * Actor
 *
 * @property int                $id         {primary}
 * @property string             $firstName
 * @property string             $lastName
 * @property int                $age
 * @property string             $gender
 * @property ManyHasMany|Film[] $films      {m:m Film::$actors}
 */
class Actor extends Entity
{

}