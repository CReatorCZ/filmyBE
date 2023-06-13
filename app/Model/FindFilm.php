<?php

namespace App\Model;

class FindFilm extends AbstractService
{
    public function findFilm(int $id): array{
        $entita = $this->orm->films->getById($id);

        $actors = [];
        foreach ($entita->actors as $actor){
            $actors[] = [
                'id' => $actor->id,
                'firstName' => $actor->firstName,
                'lastName' => $actor->lastName,
                'age' => $actor->age,
                'gender' => $actor->gender,
            ];
        }

        $data[] = [
            'id' => $entita->id,
            'name' => $entita->name,
            'genre' => $entita->genre,
            'direction' => $entita->direction,
            'releaseDate' => $entita->releaseDate,
            'length' => $entita->length,
            'rating' => $entita->rating,
            'nationalOrigin' => $entita->nationalOrigin,
            'description' => $entita->description,
            'actors' => $actors,
        ];


        return $data;
    }

}