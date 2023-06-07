<?php

namespace App\Model\Films;

use Nextras\Orm\Entity\Entity;

/**
 * Film
 *
 * @property int        $id    {primary}
 * @property string     $name
 * @property string     $genre
 * @property string     $direction
 * @property int        $releaseDate
 * @property int        $length
 * @property int        $rating
 * @property string     $nationalOrigin
 * @property string     $description
 */
class Film extends Entity
{

}