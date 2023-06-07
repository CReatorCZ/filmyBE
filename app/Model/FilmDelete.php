<?php

namespace App\Model;

class FilmDelete extends AbstractService
{
    public function deleteFilm(int $id) : bool{
        $film = $this->orm->films->getById($id);
        if(!$film){
            throw new \Exception("Film doesnt exist");
            return false;
        }

        $this->orm->films->removeAndFlush($film);


        return true;
    }
}