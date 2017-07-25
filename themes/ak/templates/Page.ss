<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <% base_tag %>
        <title><% if MetaTitle %>$MetaTitle<% else %>$Title<% end_if %> &raquo; $SiteConfig.Title</title>
        <script src="//use.typekit.net/wsd7jqz.js"></script>
        <script>try{Typekit.load();}catch(e){}</script>      
        <meta name="description" content="Ak Expressions">
        <meta name="agency" content="Suffolk Cloud">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/jquery.sidr.light.css">        
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/normalize.css">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/skeleton.css">
        <link rel="stylesheet" type="text/css" media="screen" href="$ThemeDir/css/site.css">
        <link rel="shortcut icon" href="$ThemeDir/images/favicon.png" />        
        <% include GoogleAnalytics %>
    </head>
    <body class="$ClassName">
        <div id="sidr">
            <% include MobileNav %>
        </div>         
        <div class="container">
            <% include Header %>
            $Layout
            <% include Footer %>
        </div>

            <script>
            jQuery(document).ready(function() {
              jQuery('#sidr-menu').sidr({side: 'left'});
            });
            </script>         
    </body>
</html>
