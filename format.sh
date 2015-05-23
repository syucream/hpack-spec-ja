html=$1
header=`cat $2 | perl -pe 's/(\/|\:|\"|\-)/\\\\$1/g'`

perl -pe "s/<table class\=\"header\" id=\"rfc.headerblock\">.+<\/table>/$header/m" $html
