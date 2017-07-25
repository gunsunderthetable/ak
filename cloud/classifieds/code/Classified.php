<?php

    class Classified extends DataObject{

        static $db = array(
            "Name" => "Varchar(150)",
            "Description" => "HTMLText",
            "DatePublished" => "Date",
            "URLSegment" => "Varchar(200)",
            "SortOrder" => "Int"

        );
        public function populateDefaults(){
                parent::populateDefaults();

                $this->setField('DatePublished', date('d/m/Y', strtotime('now')));
        }
        static $has_one = array(
                "ClassifiedImage" => "Image",
                "ClassifiedHolder" => "ClassifiedHolder"
        );
        
        public function getCMSFields(){
            return new FieldList(
                new TextField('Name', 'Name'),
                new TextareaField('Description', 'Description'),
                new DateField('DatePublished', 'Date published'),
                new UploadField('ClassifiedImage', 'Image')
            );
        }   
        
        public function generateURLSegment($title){
                $t = strtolower($title);
                $t = str_replace('&amp;','-and-',$t);
                $t = str_replace('&','-and-',$t);
                $t = ereg_replace('[^A-Za-z0-9]+','-',$t);
                $t = ereg_replace('-+','-',$t);
                if(!$t) {
                        $t = "contact-$this->ID";
                }
                return $t;
        }

        public function onBeforeWrite()
        {
                if($this->Name)
                {
                        $this->URLSegment = $this->generateURLSegment($this->Name);
                }
                parent::onBeforeWrite();
        }
    }
