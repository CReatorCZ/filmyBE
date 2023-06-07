<?php

namespace App\Model;

class FindFilm extends AbstractService
{
    public function findFilm(int $id): array{
        $entita = $this->orm->films->getById($id);
        $totalCount = $this->orm->films->findAll()->count('*');

        $data[] = [
            'id' => $entita->id,
            'name' => $entita->name,
            'genre' => $entita->genre,
            'direction' => $entita->direction,
            'releaseDate' => $entita->releaseDate,
            'length' => $entita->length,
            'rating' => $entita->rating,
            'nationalOrigin' => $entita->nationalOrigin,
            'description' => $entita->description
        ];




        return $data;
    }

}