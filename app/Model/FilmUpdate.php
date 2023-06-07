<?php

namespace App\Model;

class FilmUpdate extends AbstractService
{

    public function updateFilm(array $data) : bool {

        $film = $this->orm->films->getById($data['id']);
        if(!$film){
            throw new \Exception("Film doesnt exist");
            return false;
        }

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