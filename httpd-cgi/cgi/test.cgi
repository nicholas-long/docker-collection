#!/bin/bash
echo "Content-Type: text/html"
echo ""
echo "<pre>"
env
echo "Tests:"
ping -c 3 $QUERY_STRING
echo "</pre>"
ls / | awk '
BEGIN { print "<ul>" }
{ print "<li>", $0, "</li>" }
END { print "</ul>" }
'
