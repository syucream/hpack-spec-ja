hpack-spec-ja
=============

[HPACK](https://datatracker.ietf.org/doc/draft-ietf-httpbis-header-compression/) Spec Japanese Translation

How to create translated specification
---------------------------------------

```
$ git submodule init
$ git submodule update
$ cp draft-ietf-httpbis-header-compression-10-ja.xml http2-spec/
$ xsltproc rfc2629.xslt http2-spec/draft-ietf-httpbis-header-compression-10-ja.xml > header-compression-10-ja.html
```

