set +e
rm -f *.so *.int *.gnt *.o *debug.log *cobconfig*cfg *prep *.log *sys*.txt *.idy *lst *report.txt

cob -vgzc fizzbuzz.cbl
