<?php

	class ClassifiedRSSFeed extends RSSFeed{
		
		function Entries() 
		{
			$output = new DataObjectSet();
			if(isset($this->entries)) 
			{
				foreach($this->entries as $entry) 
				{
					$output->push(new ClassifiedRSSFeed_Entry($entry, $this->titleField, $this->descriptionField, $this->authorField));
				}	
			}
			return $output;
		}
		
		function feedContent() 
		{
			SSViewer::set_source_file_comments(false);
			return str_replace('&nbsp;', '&#160;', $this->renderWith('ClassifiedRSSFeed'));
		}
		
	}
	
	class ClassifiedRSSFeed_Entry extends RSSFeed_Entry{
		
		function AbsoluteLink($action = null)
		{
			return Controller::join_links(Director::absoluteURL($this->link), $action);
		}
		
	}
