<?php

namespace App\Model;

use Nextras\Orm\Collection\Expression\LikeExpression;
use Nextras\Orm\Collection\ICollection;

class AllFilms extends AbstractService
{
    public function getFilms(int $offset, int $limit, ?string $filteredWord = "", ?string $filteredActor = ""): array
    {
        $filteredWord = $filteredWord ?? "";
        $filteredActor = "jo";


        $filteredFilms = $this->orm->films->findBy([
            'name~' => LikeExpression::contains($filteredWord),
        ])->limitBy($limit, $offset);

        $filteredFilmsCount = $this->orm->films->findBy([
            'name~' => LikeExpression::contains($filteredWord),
        ])->count('*');

        //$filteredActorsCount = $this->orm->films->getFilmsByActors($filteredActor);


        $finalFilterFilms = [];
        foreach ($filteredFilms as $filmItem) {

            $actors = [];
            foreach ($filmItem->actors as $actor) {
                $actors[] = [
                    'id' => $actor->id,
                    'firstName' => $actor->firstName,
                    'lastName' => $actor->lastName,
                    'age' => $actor->age,
                    'gender' => $actor->gender,
                ];
            }

            $finalFilterFilms[] = [
                'id' => $filmItem->id,
                'name' => $filmItem->name,
                'genre' => $filmItem->genre,
                'direction' => $filmItem->direction,
                'releaseDate' => $filmItem->releaseDate,
                'length' => $filmItem->length,
                'rating' => $filmItem->rating,
                'nationalOrigin' => $filmItem->nationalOrigin,
                'description' => $filmItem->description,
                'actors' => $actors,
            ];
        }


        return [
            'totalCount' => $filteredFilmsCount,
            'films' => $finalFilterFilms,

        ];
    }

}