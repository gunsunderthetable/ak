<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <% base_tag %>
        <title>$Title</title>
        <meta name="description" content="Suffolk Cloud">
        <meta name="agency" content="SuffolkCloud">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/jquery.sidr.light.css">        
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/normalize.css">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/skeleton.css">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/chacs.css">
        <link href="https://fonts.googleapis.com/css?family=Libre+Baskerville" rel="stylesheet">  
        <link href="https://fonts.googleapis.com/css?family=Open+Sans+Condensed:700" rel="stylesheet">
        <% if $SiteConfig.Favicon %>
        <link rel="shortcut icon" href="$SiteConfig.Favicon.URL" />        
        <% else %>
        <% end_if %>
        <% include GoogleAnalytics %>
        <% if $ImageLinks %>
        <% end_if %>
    </head>
    <body class="$ClassName">
        
        <div id="sidr">
            <% include MobileNav %>
        </div>      

        <% include Header %>
   
        <div class="container">
            $Layout
        </div>

        <% include Footer %>

        <script>
            jQuery(document).ready(function() {
              jQuery('#sidr-menu').sidr({side: 'left'});
            });
        </script>         
    </body>
</html>