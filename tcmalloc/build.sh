echo "build tcmalloc exec upinfo.out"
g++ test.cpp --std=c++11 -L . -Wl,-rpath . -ltcmalloc_minimal -o upinfo.out
echo "build normal exec normal.out"
g++ test.cpp --std=c++11 -o normal.out

echo "-=-=-=-=-=-=-=-=-=-=-"
echo "   Run    Execute    "
echo "-=-=-=-=-=-=-=-=-=-=-"

echo "use tcmalloc:"
./upinfo.out
echo "normal:"
./normal.out

