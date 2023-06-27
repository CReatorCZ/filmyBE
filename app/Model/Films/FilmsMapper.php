<?php

namespace App\Model\Films;

use Nextras\Dbal\QueryBuilder\QueryBuilder;
use Nextras\Orm\Mapper\Mapper;

class FilmsMapper extends Mapper
{

    public function getFilmsByActors(object $filters){
        $builder = new QueryBuilder();
        $builder->select("");
        $builder->from("");
        $builder->joinInner("");

        if($filters->actors){

        }
    }
}