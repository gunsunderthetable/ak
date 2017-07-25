<?php

	class Box extends DataObject{
		
            public static $db = array(
                'Title' => 'Varchar(200)',
                'Description' => 'HTMLText',
                'SortOrder' => 'Int'
            );
            
            public static $default_sort='SortOrder';
            
            public static $has_one = array(
                'HomePage' => 'HomePage',
                'Icon' => 'Image',
                'LinkPage' => 'SiteTree',
                'BackGroundImage' => 'Image'
            );		

            public function getCMSFields(){
                return new FieldList(
                   new TextField('Title', 'Box title'),
                   new TextareaField('Description', 'Box description'),
                   new UploadField('BackGroundImage', 'Background image for the box'),
                   new UploadField('Icon', 'Icon image for the box'),
                   new TreeDropdownField("LinkPageID", "Choose a page to link to", "SiteTree")
                );
            }
            
            public function getBoxNews() {
                $news = BlogEntry::get()->sort('Date', 'DESC')->limit(4);
                return $news;
            }
            
            
	}

        
