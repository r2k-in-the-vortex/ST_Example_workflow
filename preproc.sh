mkdir -p build
inc=""
for dirname in $(ls -R src/ | grep src/ | grep -o -E '[^:]*')
do
inc+=" -I $dirname"
done
gpp src/Config0.ST $inc -o build/result.ST
