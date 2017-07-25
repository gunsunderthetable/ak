<?php

	class EndorsementsGallery extends ImageGallery{
        static $db = array(
            'Limit' => 'Int',
            "Story1" => "HTMLText",
            "Story2" => "HTMLText",
            "Story3" => "HTMLText"
        );
                
		
		function getCMSFields()
		{

			$fields = parent::getCMSFields();

			// $imageTable = new ImageDataObjectManager(
			// 	$this,
			// 	'GalleryImages', 
			// 	'GalleryImage',
			// 	'GImage',
			// 	array(
			// 	'Title' => 'Title'
			// 	),
			// 	"getCMSFields"
			// );

			// $fields->addFieldToTab('Root.Content.Images', $imageTable);
            $fields->addFieldToTab('Root.Content.StoryOne', new HtmlEditorField('Story1','Story 1'));
            $fields->addFieldToTab('Root.Content.StoryTwo', new HtmlEditorField('Story2','Story 1'));
                        
                        
			return $fields;
		}
                
	}
	
	class EndorsementsGallery_Controller extends GalleryPage_Controller{
		
		function init()
		{				
			parent::init();
			
			Requirements::css("themes/ak/css/lightbox.css"); 
                        
			Requirements::javascript("themes/ak/javascript/jquery-1.11.0.min.js");                        
			Requirements::javascript("themes/ak/javascript/lightbox.min.js");                        
                       
                        
		}
		
	}
