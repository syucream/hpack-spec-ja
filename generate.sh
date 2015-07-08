# $ sh ./generate.sh [translated xml]

target=$1
style="rfc2629.xslt"

# Format translated xml and convert xml to html by using rfc2629.xslt
perl -pe "s/^\s+//g" $1 | perl -pe "s/([^\x01-\x7E])\n/\$1/g" | java -classpath http2-spec/lib/saxon9.jar net.sf.saxon.Transform -novw -l /dev/stdin $style | sed -f http2-spec/lib/addstyle.sed
