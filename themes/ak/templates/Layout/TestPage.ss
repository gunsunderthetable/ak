  
      <div class="row">

          <% loop $TestBoxes %>
          <div class="box">
              <div class="content">
                  <% if $Description %>
                      <p>$Description</p>
                  <% end_if %>
                  <% if $BackGroundImage %>
                    <img src="<% with $BackGroundImage %><% with $CroppedImage(500,500) %>$URL<% end_with %><% end_with %>" width="500" height="500" title="$Title" alt="$Title">
                  <% end_if %>
                  <% if $Icon %>
                    <img class="icon" src="<% with $Icon %><% with $CroppedImage(130,130) %>$URL<% end_with %><% end_with %>" width="130" height="130" title="$Title" alt="$Title">
                  <% end_if %>
              </div>
          </div>          
          <% end_loop %>
      </div>      

