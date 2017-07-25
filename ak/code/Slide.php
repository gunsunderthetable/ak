<?php

	class Slide extends DataObject{
		
		 static $db = array(
			'Title' => 'Varchar(200)',
			'Description' => 'Text',
            'ExternalLink' => 'Text',
            'ShowLink' => 'Boolean',
            'SortOrder'=>'Int'                          
		);
		
		 static $has_one = array(
			'SlideImage' => 'Image',
			'HomePage' => 'HomePage',
			'Page' => 'SiteTree'
		);
                
         // public static $default_sort='SortOrder';		
                
		 function getCMSFields(){
			return new FieldList(
				new TextField('Title', 'Slide title'),
				new TextareaField('Description', 'Slide description'),
				new TreeDropdownField('PageID', 'Select a page to link to from the image', 'SiteTree'),
				new TextField('ExternalLink','Use an external link with http://..this overrides the page link'),
                new CheckboxField('ShowLink', 'Show a read more button on the slide'),
				new UploadField('SlideImage', 'Image')
			);
		}
		
		//  function getRealTitle(){
		// 	$title = "";
		// 	if($this->Title){
		// 		$title = $this->Title;
		// 	}
		// 	else{
		// 		$title = $this->PageID ? $this->Page()->Title : "" ;
		// 	}
		// 	return $title; 
		// }
		
			
		//  function getRealDescription(){
		// 	$description = "";
		// 	if($this->Description){
		// 		$description = $this->Description; 
		// 	}
		// 	else{
		// 		$description = $this->PageID ? $this->Page()->MetaDescription : "" ;
		// 	}
		// 	return $description;
		// }

		//  function getImageName(){
		// 	return $this->SlideImageID ? $this->SlideImage()->Name : "";
		// }
	}
