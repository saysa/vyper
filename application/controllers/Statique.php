<?php

namespace application\controllers;


class Statique extends \Framework\Shared\Controller {

	public function cgu()
	{
        $layout = $this->getLayoutView();
        $layout->set("soe_title", "Conditions générales d'utilisation");
	}

    public function aPropos()
    {
        $layout = $this->getLayoutView();
        $layout->set("soe_title", "A propos");
    }

    public function contact()
    {
        $layout = $this->getLayoutView();
        $layout->set("soe_title", "Contact");
    }

    public function recrutement()
    {
        $layout = $this->getLayoutView();
        $layout->set("soe_title", "Recrutement");
    }

    public function partenariat()
    {
        $layout = $this->getLayoutView();
        $layout->set("soe_title", "Partenariat");
    }

    public function preco()
    {
        $layout = $this->getLayoutView();
        $layout->set("soe_title", "VYPER Magazine Vol.01");


    }

    public function googleResults()
    {
        $layout = $this->getLayoutView();
        $layout->set("soe_title", "Résultats");
    }

    public function page404()
    {
        $layout = $this->getLayoutView();
        $layout->set("soe_title", "Page 404");
        http_response_code(404);
    }
}

