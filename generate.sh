# $ sh ./generate.sh [translated xml]

target=$1
xslt="rfc2629.xslt"

# Format translated xml and convert it to html by rfc2629.xslt
# 1) Eliminate unnecessary whitespaces 2) Build html by xslt 3) Apply modification relating to styles
perl -pe "s/^\s+([^\x01-\x7E])/\$1/g" $1 | perl -pe "s/([^\x01-\x7E])\n/\$1/g" | java -classpath http2-spec/lib/saxon9.jar net.sf.saxon.Transform -novw -l /dev/stdin $xslt | sed -f http2-spec/lib/addstyle.sed
