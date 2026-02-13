set +e
rm -f *.so *.int *.gnt *.o *debug.log *cobconfig*cfg *prep *.log *sys*.txt *.idy *lst *report.txt

cob -vgzU -e "" fizzbuzz.cbl -C case -C 'verbose preprocess"mfupp" verbose endp'
cobmfurun -verbose -redirect:true fizzbuzz.so
