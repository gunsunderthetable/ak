<?php

	class VideoBox extends DataObject{
		
            public static $db = array(
                'Title' => 'Varchar(200)',
                'Snippet' => 'HTMLText',
                'SortOrder' =>'Int'
            );
            
            
            public static $has_one = array(
                'VideoGallery' => 'VideoGallery'
            );		

            public function getCMSFields(){
                return new FieldList(
                    new TextField('Title', 'Box title'),
                    new TextareaField('Snippet', 'Paste your Youtube code in here')
                );
            }
            
            
	}

        
