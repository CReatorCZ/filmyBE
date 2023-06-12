<?php

namespace App\Model;


use App\Model\Actors\ActorsRepository;
use App\Model\Films\FilmsRepository;
use Nextras\Orm\Model\Model;

/**
 * Model
 *
 * @property-read FilmsRepository   $films
 * @property-read ActorsRepository  $actors
 */
class Orm extends Model
{

}