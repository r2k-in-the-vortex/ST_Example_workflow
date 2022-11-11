mkdir -p build
d=" -I src/"
d+=" -I src/SomeThird"
gpp src/Config0.ST $d -o build/result.ST
