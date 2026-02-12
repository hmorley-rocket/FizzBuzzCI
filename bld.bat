@set COBSW=+S5
@del *.dll *.int *.gnt *.obj *debug.log *cobconfig*cfg *prep *.log *sys*.txt *.idy *lst *report.txt

@REM cbllink -D fizzbuzz.cbl
@REM run fizzbuzz 10 20

cobol fizzbuzz.cbl omf(obj) verbose preprocess"mfupp" verbose endp;
cbllink -D fizzbuzz.obj
if errorlevel 1 goto theend
mfurun -verbose -dc:ansi fizzbuzz.dll

:theend
