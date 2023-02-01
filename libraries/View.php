<?php
use Twig\Environment;
use Twig\Loader\FilesystemLoader;
class View {
    public $twig;
    public function __construct()
    {
        $loader = new FilesystemLoader(BASE_PATH . '/themes');
        $this->twig = new Environment($loader, ['debug' => true]);
        $this->twig->addExtension(new \Twig\Extension\DebugExtension());
        $this->twig->addGlobal('BASE_URL',BASE_URL);
    }

    public function render($template, $vars = [])
    {
        echo $this->twig->render($template.TEMPLATE_EXT, $vars);
    }
}