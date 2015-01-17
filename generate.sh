target="header-compression-10-ja"
style="rfc2629.xslt"

java -classpath http2-spec/lib/saxon9.jar net.sf.saxon.Transform -novw -l "draft-ietf-httpbis-${target}.xml" $style | sed -f http2-spec/lib/addstyle.sed > "${target}.html"
