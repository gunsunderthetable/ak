      <div class="row ImageBasedPage">
          <div class="sliderBox desktop">
              <div class="content">
                <div id="main" role="main">
                  <section class="slider">
                    <div class="flexslider">
                      <ul class="slides">
                          <% loop Slides %>
                            <li>
                                <img src="$SlideImage.CroppedImage(800,800).URL" alt="$Title" title="$Title" />
                            </li>
                          <% end_loop %>
                      </ul>
                    </div>
                  </section>
                </div>                  
              </div>
          </div>          
          <% control Boxes %>
          <div class="box<% if Description %> textBox<% end_if %>" onclick="location.href='$LinkPage.Link';">
              <div class="content">
                  <% if Description %>
                  <div class="vidHolder">
                      $Description
                  </div>
                  <% end_if %>
                  <a href="$LinkPage.Link">
                  <% if BackGroundImage %>
                    <img class="boxBg" src="$BackGroundImage.CroppedImage(500,500).URL" width="500" height="500" title="$Title" alt="$Title" />
                  <% end_if %>
                  <% if Icon %>
                    <img class="icon" src="$Icon.CroppedImage(158,158).URL" width="158" height="158" title="$Title" alt="$Title">
                  <% end_if %>
                  </a>
              </div>
          </div>          
          <% end_control %>
          <div class="box desktop">
              <div class="content">
                  <div class="subBox one">
                        <a href="https://www.facebook.com/akexpressions" target="_blank"/><img src="$ThemeDir/images/facebook.png" alt="facebook"/></a>
                  </div>
                  <div class="subBox">
                        <a href="https://twitter.com/akexpressions" target="_blank"/><img src="$ThemeDir/images/twitter.png" alt="twitter"/></a>
                  </div>
                  <div class="subBox one">
                        <a href="https://uk.pinterest.com/Akexpressions/" target="_blank"/><img src="$ThemeDir/images/pinterest.png" alt="pinterest"/></a>
                  </div>
                  <div class="subBox">
                        <a href="$BlogHolder.Link" /><img src="$ThemeDir/images/blog.png" alt="$BlogHolder.Title"/></a>
                  </div>              
              </div>
          </div>
          
      </div>      

<% require javascript(themes/ak/javascript/jquery.flexslider.js) %>
<% require javascript(themes/ak/javascript/site_home.js) %>

<% require css(themes/ak/css/flexslider.css) %>