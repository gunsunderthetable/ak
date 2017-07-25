        <div class="imgSocial">
            <a href="http://pinterest.com/pin/create/button/?url={$BaseHref}$GalleryImage.URL" target="_blank"><img src="$ThemeDir/images/image_pin_it.png" /></a>
            <a href="https://twitter.com/home?status={$BaseHref}$GalleryImage.URL" target="_blank"><img src="$ThemeDir/images/image_tweet_it.png" /></a>
            <a href="https://www.facebook.com/sharer/sharer.php?u={$BaseHref}$GalleryImage.URL" target="_blank"><img src="$ThemeDir/images/image_fb_it.png" /></a>
            <a class="expander" href="<% with $GalleryImage %>$SetRatioSize(1200,700).URL<% end_with %>" data-lightbox="example-set" data-title="$Title">><img src="$ThemeDir/images/image_expand_it.png" /></a>
        </div>