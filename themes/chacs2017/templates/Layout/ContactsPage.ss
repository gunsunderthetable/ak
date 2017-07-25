<div class="twelve columns">
    <div class="row">
     $Breadcrumbs 
    </div>
    <div class="row">
    
        <div id="standardPage">
            <div class="pageContent">
                <h1>$Title</h1>
                <% if $Intro %><p class="intro">$Intro</p><% end_if %>
                $Content
                <% if $Contacts %>
                    <table id="chacContacts">
                        <thead>
                          <tr>
                            <th data-sort="string">Ref</th> 
                            <th data-sort="string">Surname</th> 
                            <th data-sort="string">Forenames</th>
                            <th data-sort="string">Email</th>
                            <th data-sort="string">Phone</th>
                            <th data-sort="string">Postcode</th>
                            <th data-sort="string">County</th>
                            <th data-sort="string">Region</th>
                            <th data-sort="string">Sleeps</th>
                            <th data-sort="string">Only Sch Hols</th>
                            <th data-sort="string">Accept Dogs</th>
                            <th data-sort="string">Flexible</th>
                          </tr>
                        </thead>
                        <tbody>
                        <% loop $Contacts %>
                          <tr>
                            <td>$Reference</td> 
                            <td>$Surname</td> 
                            <td>$Forenames</td>
                            <td>$Email</td>
                            <td>$Phone</td>
                            <td>$Postcode</td>                        
                            <td>$County</td>
                            <td>$Region</td>
                            <td>$Sleeps</td>
                            <td><% if $OnlySchoolHols %>Yes<% end_if %></td>
                            <td><% if $AcceptDogs %>Yes<% end_if %></td>
                            <td><% if $Flexible %>Yes<% end_if %></td>
                          </tr>

                        <% end_loop %>
                        </tbody>
                    </table>                
                <% end_if %>        




                <% if $Children %>
                <div id="mobileLinks" class="mobile bottomed">
                    <div class="clearFix">
                        <h2>In th data-sort="string"is section</h2>
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
        </div>
            
    </div>
        
</div>
<script>
    jQuery("#chacContacts").stupidtable();
</script>