mkdir -p build
inc=""
for dirname in $(ls -R src/ | grep src/ | grep -o -E '[^:]*')
do
inc+=" -I $dirname"
done
gpp src/Config0.ST $inc -o build/result.ST

cd build/
iec2c -r -R -I ~/matiec/lib/ result.ST
g++ -I ~/matiec/lib/C/ -c Config0.c
g++ -I ~/matiec/lib/C/ -c Res0.c