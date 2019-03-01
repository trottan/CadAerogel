#!/bin/csh

echo 'Changing Index'




cd ~/Cad/Aer_Test/experiments/clas12/rich



















rm newMaterial.pl
touch newMaterial.pl
echo "use strict;" >> newMaterial.pl
echo "use warnings;" >> newMaterial.pl
echo 'use lib ("\$ENV{GEMC}/api/perl");' >> newMaterial.pl
echo "use utils;" >> newMaterial.pl
echo "#use geometry;" >> newMaterial.pl
echo "use materials;" >> newMaterial.pl



echo ' my @penergy =( "1.3778*eV",  "1.3933*eV", "1.4091*eV", "1.4253*eV",   "1.4419*eV",  #5 " ' >> newMaterial.pl
echo '		"1.4588*eV",  "1.4762*eV",  "1.4940*eV",  "1.5122*eV",  "1.5309*eV", #10 ' >> newMaterial.pl
echo '		"1.5500*eV",  "1.5696*eV",  "1.5897*eV",  "1.6104*eV",  "1.6316*eV", #15 ' >> newMaterial.pl
echo '		"1.6533*eV",  "1.6757*eV",  "1.6986*eV",  "1.7222*eV",  "1.7465*eV", #20 ' >> newMaterial.pl
echo '		"1.7714*eV",  "1.7971*eV",  "1.8235*eV",  "1.8507*eV",  "1.8788*eV", #25 ' >> newMaterial.pl
echo '		"1.9077*eV",  "1.9375*eV",  "1.9683*eV",  "2.0000*eV",  "2.0328*eV", #30' >> newMaterial.pl
echo '		"2.0667*eV",  "2.1017*eV",  "2.1379*eV",  "2.1754*eV",  "2.2143*eV", #35 ' >> newMaterial.pl
echo '		"2.2545*eV",  "2.2963*eV",  "2.3396*eV",  "2.3846*eV",  "2.4314*eV", #40 ' >> newMaterial.pl
echo '		"2.4800*eV",  "2.5306*eV",  "2.5833*eV",  "2.6383*eV",  "2.6957*eV", #45 ' >> newMaterial.pl
echo '		"2.7556*eV",  "2.8182*eV",  "2.8837*eV",  "2.9524*eV",	"3.0244*eV", #50 ' >> newMaterial.pl 
echo '		"3.1000*eV",  "3.1795*eV",  "3.2632*eV",  "3.3514*eV", "3.4444*eV",  #55 ' >> newMaterial.pl
echo '		"3.5429*eV",  "3.6471*eV",  "3.7576*eV",  "3.8750*eV", "4.0000*eV",  #60 ' >> newMaterial.pl
echo '		"4.1333*eV",  "4.2759*eV",  "4.4286*eV",  "4.5926*eV",  "4.7692*eV", #65 ' >> newMaterial.pl 
echo '		"4.9600*eV",  "5.1667*eV",  "5.3913*eV",  "5.6364*eV",  "5.9048*eV", #70 ' >> newMaterial.pl
echo '		#"6.2000*eV" ); # 71 numbers >> newMaterial.pl ' >> newMaterial.pl




	




