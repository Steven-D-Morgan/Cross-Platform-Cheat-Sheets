# HTML Expressions
___
replace(replace(replace(body('Create_HTML_table'),'&lt;','<'),'&gt;','>'),'&quot;','"')

concat('<a href="', item()?['{Link}'], '">', item()?['Title'], '</a>')

<a href='https:\\www.microsoft.com'>Link to Microsoft</a>
