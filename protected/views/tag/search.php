<?php
/* @var $this SearchFormController */
/* @var $model SearchForm */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'search-form-search-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// See class documentation of CActiveForm for details on this,
	// you need to use the performAjaxValidation()-method described there.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($search); ?>

	<div class="row">
		<?php echo $form->labelEx($search,'user'); ?>
		<?php echo $form->textField($search,'user'); ?>
		<?php echo $form->error($search,'user'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($search,'category'); ?>
		<?php echo $form->textField($search,'category'); ?>
		<?php echo $form->error($search,'category'); ?>
	</div>


	<div class="row buttons">
		<?php echo CHtml::submitButton('Submit'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->

<?php
    echo "<hr>";
    echo "TAGS: ";
    foreach ($tags as $t) {
        echo $t->name . "  ";
    }
?>