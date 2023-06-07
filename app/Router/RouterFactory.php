<?php

declare(strict_types=1);

namespace App\Router;

use Nette;
use Nette\Application\Routers\RouteList;
use Nette\Application\Routers\Route;
use Contributte\ApiRouter\ApiRoute;


final class RouterFactory
{

	public function createRouter(): RouteList
	{
		$router = new RouteList;

        $router[] = new ApiRoute('/films/',
            'Database', ['methods' => ['GET' => 'read']]);
        $router[] = new ApiRoute('/film/<id>',
            'Database', ['methods' => ['GET' => 'find']]);
        $router[] = new ApiRoute('/films/delete/<id>',
            'Database', ['methods' => ['DELETE' => 'delete', "OPTIONS" => "options"]]);
        $router[] = new ApiRoute('/films/update',
            'Database', ['methods' => ['PUT' => 'update', "OPTIONS" => "options"]]);
        $router[] = new ApiRoute('/films/add',
            'Database', ['methods' => ['POST' => 'create', "OPTIONS" => "options"]]);
//        $router[] = new ApiRoute('/films/',
//            'Database', ['methods' => ['GET' => 'read']]);

		return $router;
	}
}
