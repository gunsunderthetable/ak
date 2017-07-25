<?php

	class CustomerGallery extends ImageGallery{
                
		static $many_many = array(
        	'Members' => 'Member'
		);
		function getCMSFields()
		{

			$fields = parent::getCMSFields();
        	$fields->removeByName('TopLevelImage');
        	$fields->removeByName('IconImage');
        	$fields->removeByName('MenuImage');
        	
			// Create a default configuration for the new GridField, allowing record editing
			$config = GridFieldConfig_RelationEditor::create();
				$config->removeComponentsByType('GridFieldAddNewButton');
			// Create a gridfield to hold the package
			$packageField = new GridField(
			    'Members', // Field name
			    'Member', // Field title
			    $this->Members(), // List of all related members
			    $config
			);        
			// Create a tab named "Package" and add our field to it
			$fields->addFieldToTab('Root.Members', $packageField); 

			return $fields;
		}
                
        function CheckAccessRights() {
            // get the users for this gallery
            $membersAllowed = $this->Members();

            $thisUserID=Member::currentUser()->ID;
            
            if($membersAllowed) {
                foreach($membersAllowed as $member){
                    $memberID=$member->ID;
                    if ($memberID==$thisUserID) {
                        //condition met - they has accesss
                        return true;
                    } 
                }
            }
            // condition not met
            return false;
            
        }
	}
	
	class CustomerGallery_Controller extends GalleryPage_Controller{
		
		function init()
		{				
			parent::init();
			Requirements::css("themes/ak/css/lightbox.css"); 
			Requirements::javascript("themes/ak/javascript/lightbox.min.js");                        
                        
		}
		
	}
