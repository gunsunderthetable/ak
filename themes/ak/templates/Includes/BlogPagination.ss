<% if BlogEntries.MoreThanOnePage %>
<ul class="pagination clearfix">
	<% if BlogEntries.NotFirstPage %>
    <li class="prev">
        <a href="$BlogEntries.PrevLink" title="View the previous page" rel="previous">&laquo; Prev</a>
    </li>
	<% end_if %>
	<% control BlogEntries.PaginationSummary(6) %>
		<% if CurrentBool %>
	<li class="noLink <% if Last %> last<% end_if %>">
       $PageNum
    </li>
	<% else %>
		<% if Link %>
		<li <% if Last %> class="last"<% end_if %>>
            <a href="$Link" title="View page number $PageNum">$PageNum</a>
        </li>
		<% else %>
		<li class="noLink">
			&hellip;
		</li>
		<% end_if %>
	<% end_if %>
	<% end_control %>
	<% if BlogEntries.NotLastPage %>
    <li class="next">
        <a href="$BlogEntries.NextLink" title="View the next page" rel="next">Next &raquo;</a>
    </li>
	<% end_if %>
</ul>
<% end_if %>