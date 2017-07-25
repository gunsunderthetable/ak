<?php
class Page extends SiteTree {
       private static $has_one = array(
            "MyWidgetArea" => "WidgetArea"
        );

        public function getCMSFields() {
            $fields = parent::getCMSFields();
           
            $fields->addFieldToTab("Root.Widgets", new WidgetAreaEditor("MyWidgetArea"));
            return $fields;
        }

        public function getImageGalleries() {
            if($galleries=ImageGallery::get()){
                return $galleries;
            }
        }        

        public function getGalleryTop() {
            $gallery = GalleryTopPage::get();
            return $gallery->first();
        }

        public function getBlogHolder() {
            $blogHolder = BlogHolder::get();
            return $blogHolder->first();
        }
    }
    
class Page_Controller extends ContentController {

    public function init() {
        parent::init();
            Requirements::javascript('mysite/javascript/jquery-1.11.0.min.js');
            Requirements::javascript('mysite/javascript/jquery.sidr.min.js');                
            Requirements::javascript('mysite/javascript/site.js');
    }

}
