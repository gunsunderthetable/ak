<?php

	class Quote extends DataObject{
		
		 static $db = array(
			'Title' => 'Varchar(200)',
			'Quote' => 'Text',
            'Date' => 'Text',
            'SortOrder' => 'Int'
		);
		
		static $has_one = array(
			'QuoteImage' => 'Image',
        	'WhatPeopleSay' => 'WhatPeopleSay'
		);
                
		// public static $default_sort='SortOrder';		
                
		function getCMSFields(){
			return new FieldList(
				new TextField('Title', 'Title'),
				new TextareaField('Quote', 'Quote'),
				new TextField('Date', 'Date'),
				new UploadField('QuoteImage', 'Image')
			);
		}
		
	}
