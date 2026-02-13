set +e
mkdir bin
cd bin
rm -f *.so *.int *.gnt *.o *debug.log *cobconfig*cfg *prep *.log *sys*.txt *.idy *lst *report.txt

cob -vx ../fizzbuzz.cbl

cd ..
tar czf "FizzBuzzApplication.tar.gz" "bin"
