<?php

	class WhatPeopleSay extends Page{
          
		static $has_many = array(
			"Quotes" => "Quote"
		);
		
		function getCMSFields(){
			$fields = parent::getCMSFields();
			//quotes gridfield
                        
			return $fields;
		}
		
	}
	
	class WhatPeopleSay_Controller extends Page_Controller{
		
		
		
	}
