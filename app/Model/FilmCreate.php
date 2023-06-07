<?php

namespace App\Model;

use App\Model\Films\Film;

class FilmCreate extends AbstractService
{
    public function createFilm(array $data): bool
    {
        $film =  new Film();
        $film->name = $data['name'];
        $film->genre = $data['genre'];
        $film->direction = $data['direction'];
        $film->releaseDate = $data['releaseDate'];
        $film->length = $data['length'];
        $film->rating = $data['rating'];
        $film->nationalOrigin = $data['nationalOrigin'];
        $film->description = $data['description'];

        $this->orm->persistAndFlush($film);

        return true;
    }

}