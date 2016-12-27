<?php

class TagController extends Controller
{


	public function actionIndex()
    {

        $search = new SearchForm;
        $model = new Tag;
        $tags = $model->searchUsedTag(null,null);
        if (isset($_POST['SearchForm'])) {
            $search->attributes = $_POST['SearchForm'];
            if ($search->validate()) {
                $tags = $model->searchUsedTag($search->user, $search->category);
            }
        }
        $this->render('search', array(
            'search' => $search,
            'tags' =>$tags,
        ));
    }








	// Uncomment the following methods and override them if needed
	/*
	public function filters()
	{
		// return the filter configuration for this controller, e.g.:
		return array(
			'inlineFilterName',
			array(
				'class'=>'path.to.FilterClass',
				'propertyName'=>'propertyValue',
			),
		);
	}

	public function actions()
	{
		// return external action classes, e.g.:
		return array(
			'action1'=>'path.to.ActionClass',
			'action2'=>array(
				'class'=>'path.to.AnotherActionClass',
				'propertyName'=>'propertyValue',
			),
		);
	}*/

}