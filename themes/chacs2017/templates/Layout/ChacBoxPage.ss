
<div class="twelve columns">
    <div class="row">
     $Breadcrumbs 
    </div>
    <div class="row">
    
        <div id="standardPage" <% if $FullWidthLayout %>class="fullWidthLayout"<% end_if %>>
            <div class="pageContent">
                <h1>$Title</h1>
                <% if $Intro %><p class="intro">$Intro</p><% end_if %>
                $Content
                <% if hasMap %>
                <div class="map">
                    <div id="map_canvas" style="width:100%; height:431px;"></div>
                </div>
                <% end_if %>
                <div id="boxes" class="clearFix">
                    <% loop ChacBoxes.Sort(SortOrder, ASC) %>
                    <div class="box $FirstLast">
                     
                        <% if $ChacFile %>
                            <a href="$ChacFile.Link" title="$RealTitle" class="readMore" target="_BLANK">
                            <img src="$BoxImage.CroppedImage(400,300).URL" alt="$Title" title="$Title" />

                            </a>
                            <p>$RealTitle</p>
                        <% else %>
                                <a href="$RealLink" title="$RealTitle" class="readMore">
                                <img src="$BoxImage.CroppedImage(400,300).URL" alt="$Title" title="$Title" />
                                </a>
                                <p>$RealTitle</p>
                        <% end_if %>
                            
                    </div>
                    <% end_loop %>
                </div>                
                <% if $Children %>
                <div id="mobileLinks" class="mobile bottomed">
                    <div class="clearFix">
                        <h2>In this section</h2>
                        <p>
                            <% loop $Children %>
                            <a class="quickLinkPara $FirstLast" href="$Link" title="$Title">$Title</a>
                            <% end_loop %>
                        </p>
                    </div>
                </div>            
                <% end_if %>
                $Form
                $PageComments
            </div>
            <div class="rightPanel">
                <% include SubNav %>
                $MyWidgetArea
                <% include ImageLinks %>
            </div>
        </div>
            
    </div>
        
</div>



        
