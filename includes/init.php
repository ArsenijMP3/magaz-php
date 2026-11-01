<?php
// Общая инициализация: корень сайта и функция построения ссылок.
define('ROOT', dirname(__DIR__));

// Путь к сайту относительно корня веб-сервера (например "" или "/magaz").
$docRoot = rtrim(str_replace('\\', '/', realpath($_SERVER['DOCUMENT_ROOT'] ?? '') ?: ''), '/');
$root    = str_replace('\\', '/', ROOT);
define('BASE_URL', $docRoot !== '' && strpos($root, $docRoot) === 0 ? substr($root, strlen($docRoot)) : '');

function url(string $path = ''): string
{
    return BASE_URL . '/' . ($path === '' ? '' : trim($path, '/') . '/');
}
