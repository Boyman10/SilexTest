<?php

use Symfony\Component\Debug\ErrorHandler;
use Symfony\Component\Debug\ExceptionHandler;

// Register global error and exception handlers
ErrorHandler::register();
ExceptionHandler::register();

// Register service providers.
$app->register(new Silex\Provider\DoctrineServiceProvider());
$app->register(new Silex\Provider\TwigServiceProvider(), array(
		'twig.path' => __DIR__.'/../views',
));
$app->register(new Silex\Provider\AssetServiceProvider(), array(
    'assets.version' => 'v1'
));

$app->register(new Silex\Provider\SessionServiceProvider());
$app->register(new Silex\Provider\SecurityServiceProvider(), array( // This will handle session management automatically
    'security.firewalls' => array(
        'secured' => array(
            'pattern' => '^/', // firewall against all the application
            'anonymous' => true, // allows access to anonymous users
            'logout' => true,
            'form' => array('login_path' => '/login', 'check_path' => '/login_check'), // authentication methods
            'users' => function () use ($app) {
            return new SilexTest\DAO\UserDAO($app['db']);
            },
            ),
            ),
            ));

$app->register(new Silex\Provider\FormServiceProvider());
$app->register(new Silex\Provider\LocaleServiceProvider());
$app->register(new Silex\Provider\TranslationServiceProvider());



// Register services
$app['dao.article'] = function ($app) {
    return new SilexTest\DAO\ArticleDAO($app['db']);
};
$app['dao.user'] = function ($app) {
    return new SilexTest\DAO\UserDAO($app['db']);
};
$app['dao.comment'] = function ($app) {
    $commentDAO = new SilexTest\DAO\CommentDAO($app['db']);
    $commentDAO->setArticleDAO($app['dao.article']);
    $commentDAO->setUserDAO($app['dao.user']);
    return $commentDAO;
};