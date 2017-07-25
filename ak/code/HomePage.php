<?php

      	class HomePage extends Page {
                  
              public static $has_many = array(
                  "Slides" => "Slide",
                  "Boxes" => "Box"
               );  
                    
              public function getCMSFields() {
                  $fields = parent::getCMSFields();

                  //slides gridfield
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

                  //boxes gridfield
                  $gridField = new GridField("Slides", "Slides", $this->Slides(), $gridFieldConfig);
                  $fields->addFieldToTab("Root.Slides", $gridField);
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

                  $gridField = new GridField("Boxes", "Boxes", $this->Boxes(), $gridFieldConfig);
                  $fields->addFieldToTab("Root.Boxes", $gridField);

                    return $fields;
              }      
      	}

        
        class HomePage_Controller extends Page_Controller {

        }


