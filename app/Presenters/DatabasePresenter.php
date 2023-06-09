<?php

namespace App\Presenters;

use App\Model\AllFilms;
use App\Model\FilmCreate;
use App\Model\FilmDelete;
use App\Model\FilmUpdate;
use App\Model\FindFilm;
use Nette\Application\UI\Presenter;
use Nette\DI\Attributes\Inject;

class DatabasePresenter extends Presenter
{
    #[Inject]
    public FilmDelete $filmDelete;

     #[Inject]
    public AllFilms $allFilms;

     #[Inject]
     public FindFilm $findFilm;

     #[Inject]
     public FilmUpdate $filmUpdate;

     #[Inject]
     public FilmCreate $filmCreate;

     public function actionOptions() : void {

         $this->sendJson([]);
     }

    public function actionRead(): void{
         $offset = $this->getParameter('offset');
         $limit = $this->getParameter('limit');
         $searchedWord = $this->getParameter('search');

        $this->sendJson($this->allFilms->getFilms($offset, $limit, $searchedWord));
    }

    public function actionFind(int $id): void{

         $this->sendJson($this->findFilm->findFilm($id));
    }

    public function actionDelete(int $id): void{
        $this->filmDelete->deleteFilm($id);

        $this->sendJson(["status" => "ok"]);

    }

    public function actionUpdate(): void{
         $data = $this->getHttpRequest()->getRawBody();
         $jsonData = json_decode($data, true);
         $this->filmUpdate->updateFilm($jsonData);

        $this->sendJson(["status" => "ok"]);
//         $this->sendJson($jsonData);
    }

    public function actionCreate(): void{
         $data = $this->getHttpRequest()->getRawBody();
         $jsonData = json_decode($data, true);
         $this->filmCreate->createFilm($jsonData);

//         $this->sendJson($jsonData);
    }

}