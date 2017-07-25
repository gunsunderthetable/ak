<?php

	class VideoGallery extends Page{
        static $db = array(
            'Limit' => 'Int',
        );
        
        static $has_one = array(
        );
                
		static $has_many = array(
			"VideoBoxes" => "VideoBox"
		);
		
		
		function getCMSFields()
		{

			$fields = parent::getCMSFields();

              $gridFieldConfig = GridFieldConfig::create()->addComponents(
                new GridFieldSortableRows('SortOrder'),                         
                new GridFieldToolbarHeader(),
                new GridFieldAddNewButton('toolbar-header-right'),
                new GridFieldSortableHeader(),
                new GridFieldDataColumns(),
                new GridFieldPaginator(30),
                new GridFieldEditButton(),
                new GridFieldDeleteAction(),
                new GridFieldDetailForm()
              );

              $gridField = new GridField("VideoBoxes", "VideoBoxes", $this->VideoBoxes(), $gridFieldConfig);
              $fields->addFieldToTab("Root.VideoBoxes", $gridField);
        

			return $fields;
		}
                

                
		
	}
	
	class VideoGallery_Controller extends Page_Controller{
		
		
		
	}
