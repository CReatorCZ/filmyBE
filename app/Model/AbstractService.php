<?php

namespace App\Model;

use Nextras\Orm\Model\IRepositoryLoader;
use Nextras\Orm\Model\MetadataStorage;

class AbstractService
{

    public Orm $orm;
   public function __construct(Orm $orm){
       $this->orm = $orm;
   }
}