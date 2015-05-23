target=$1
style="rfc2629.xslt"

java -classpath http2-spec/lib/saxon9.jar net.sf.saxon.Transform -novw -l $target $style | sed -f http2-spec/lib/addstyle.sed
