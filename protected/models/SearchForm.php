<?php
/**
 * Created by PhpStorm.
 * User: shark
 * Date: 26.12.2016
 * Time: 16:27
 */

class SearchForm extends CFormModel{
    public $user;
    public $category;


    public function rules()
    {
        return array(
            array('user, category', 'numerical'),
        );
    }

    public function attributeLabels()
    {
        return array(
            'user'=>'ID Пользователь',
            'category'=> 'ID Категории в которую не входит',
        );
    }


}