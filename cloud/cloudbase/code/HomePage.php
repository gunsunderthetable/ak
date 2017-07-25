<?php
class HomePage extends Page {

    public static $db = array(
        "NumberOfNews" => "Text",
        "NumberOfEvents" => "Text",
        "HideNews" => "Boolean",
        "HideEvents" => "Boolean",
        "QuickLinksHeader" => "Text"
    );

    public static $has_many = array(
        "Links" => "Link",
        "Slides" => "Slide"
    );  

    public function getCMSFields() {
      $fields = parent::getCMSFields();
        $fields->addFieldsToTab('Root.QuickLinks',new TextField("QuickLinksHeader","Quick links header"));

        $gridFieldBoxConfig = GridFieldConfig::create()->addComponents(
          new GridFieldSortableRows('SortOrder'),                         
          new GridFieldToolbarHeader(),
          new GridFieldAddNewButton('toolbar-header-right'),
          new GridFieldSortableHeader(),
          new GridFieldDataColumns(),
          new GridFieldPaginator(10),
          new GridFieldEditButton(),
          new GridFieldDeleteAction(),
          new GridFieldDetailForm()
        );

        $gridField = new GridField("Links", "Quick Links:", $this->Links(), $gridFieldBoxConfig);
        $fields->addFieldToTab("Root.QuickLinks", $gridField);                  
      
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

        $gridField = new GridField("Slides", "Slides", $this->Slides(), $gridFieldConfig);
        $fields->addFieldToTab("Root.Slides", $gridField);
        $fields->addFieldsToTab('Root.NewsAndEvents',new LiteralField("abc","Control the number of news and events displayed - otherwise the display defaults to 3"));

        $fields->addFieldsToTab('Root.NewsAndEvents',new TextField("NumberOfNews","Number of news items"));
        $fields->addFieldsToTab('Root.NewsAndEvents',new TextField("NumberOfEvents","Number of events"));
        $fields->addFieldsToTab('Root.NewsAndEvents',new CheckBoxField("HideNews","Don't show any news on the homepage"));
        $fields->addFieldsToTab('Root.NewsAndEvents',new CheckBoxField("HideEvents","Don't show any events on the homepage"));

        return $fields;
        
        
    }
    

    public function getNews($num=3) {
        $num=$this->NumberOfNews;      
        if ($holder = BlogHolder::get()->First()) {
            return ($holder) ? BlogEntry::get()->filter('ParentID', $holder->ID)->sort('Date', 'DESC')->limit($num) : false;
        }
    }

    public function getNewsHolder() {
        if ($holder = BlogHolder::get()->First()) {
             return $holder;
        }
         
    }            

    public function getEvents($num=3) {
        $num=$this->NumberOfEvents;      

        // uses the Calendar function
        if ($calendar = Calendar::get()->First()) {
            return $calendar->UpcomingEvents($num);
        }
    }
    
    public function getEventsHolder() {
        if ($holder = Calendar::get()->First()) {
            return $holder;
        }
    }
    
    public function UnusedEventsByDate() {
        if ($eventDates = CalendarDateTime::get()) {
            $output = new ArrayList();
            foreach ($eventDates as $eventDate) {
                if ($calendarEvent = CalendarEvent::get()->byID($eventDate->EventID)) {
                    $location = $calendarEvent->Location;
                } else {
                    echo 'ID is '.$eventDate->EventID.' <h1>no event record</h1> </br></br>';
                }
                $output->push(new ArrayData(array(
                    'StartDate' => $eventDate->StartDate,
                    'EndDate' => $eventDate->EndDate,
                    'Location' => $location,
                    'ID' => $eventDate->ID
                )));                
            }
            return $output;
        }
    }
}

class HomePage_Controller extends Page_Controller {
	
}
