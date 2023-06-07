<?php

namespace App\Model;

use Nextras\Orm\Collection\Expression\LikeExpression;

class AllFilms extends AbstractService
{
    public function getFilms(int $offset, int $limit, string $filteredWord = ""): array{

//        $data = $this->orm->films->findAll()->fetchAll();
        $data = $this->orm->films->findAll()->limitBy($limit,$offset);
        $totalCount = $this->orm->films->findAll()->count('*');


        $filteredFilms = $this->orm->films->findBy([
            'name~' => LikeExpression::contains($filteredWord),
        ])->limitBy($limit, $offset);
        $filteredFilmsCount = $this->orm->films->findBy([
            'name~' => LikeExpression::contains($filteredWord),
        ])->count('*');



        $films = [];
        foreach ($data as $film) {
            $films[] = [
                'id' => $film->id,
                'name' => $film->name,
                'genre' => $film->genre,
                'direction' => $film->direction,
                'releaseDate' => $film->releaseDate,
                'length' => $film->length,
                'rating' => $film->rating,
                'nationalOrigin' => $film->nationalOrigin,
                'description' => $film->description
            ];
        }

        $finalFilterFilms = [];
        foreach ($filteredFilms as $filmItem) {
            $finalFilterFilms[] = [
                'id' => $filmItem->id,
                'name' => $filmItem->name,
                'genre' => $filmItem->genre,
                'direction' => $filmItem->direction,
                'releaseDate' => $filmItem->releaseDate,
                'length' => $filmItem->length,
                'rating' => $filmItem->rating,
                'nationalOrigin' => $filmItem->nationalOrigin,
                'description' => $filmItem->description
            ];
        }



//        $json = ['totalCount' => $totalCount,
//            'films' => $films,
//            'finalFilterFilms' => $finalFilterFilms,
//            'filteredFilmsCount' => $filteredFilmsCount,
//            'filteredWord' => $filteredWord]
//        ;
        $json = ['totalCount' => $filteredFilmsCount,
            'films' => $finalFilterFilms,]
        ;

        return $json;
    }

}