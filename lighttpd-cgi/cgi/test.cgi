#!/bin/bash
echo "Content-Type: text/html"
echo ""
echo "<pre>"
env | column -t -s '='
echo "Tests:"
which column
ping -c 3 $QUERY_STRING
echo "</pre>"
ls / | awk '
BEGIN { print "<ul>" }
{ print "<li>", $0, "</li>" }
END { print "</ul>" }
'
