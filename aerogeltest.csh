#!/bin/csh

#put the source path that you use for your gemc 
source /home/jlab3/2.2/2.2/ce/jlab.sh #/Users/gangelini/work/CLAS_environment.csh

#put the path of your folder
# put all the tiles there with a certain sequential name
cd /home/jlab3/Cad/Aer_Test/experiments/clas12/rich/javacad     #/Users/gangelini/work/clas12Tags-master/Aer_Test/experiments/clas12/rich/javacad/
rm cad.gxml
touch cad.gxml
echo '*This is a test for the aerogel  ' 
set i = 1
set tiles = 99

#in previous line it is the max nr of tiles you want to test  

cd 



while($i <= $tiles)



echo 'In while'
echo 'Aerogel'$i

#Assuming your tile name is Aerogel_nr
cd /home/jlab3/Cad/Aer_Test/experiments/clas12/rich/javacad/test
cp Aerogel_$i.stl AerogelTile.stl
mv AerogelTile.stl /home/jlab3/Cad/Aer_Test/experiments/clas12/rich/javacad
cd /home/jlab3/Cad/Aer_Test/experiments/clas12/rich/javacad
rm cad.gxml
echo '<gxml> ' >> cad.gxml
echo '<volume name="OpticalGasVolume" color="201789" style="wireframe" material="Air_Opt" position="0.000000*cm 0.000000*cm 0.000000*cm" rotation="0 0 0" mother="fc" />'>> cad.gxml


#note the argument of Aerogel tiles it has the variable I am iterating so to test a variable at the time
echo ' <volume name="AerogelTile" color="664444" style="0" material="aerogel_'$i'" position="0.000000*cm 0.000000*cm 0.000000*cm" rotation="0 0 0" mother="OpticalGasVolume" />' >> cad.gxml
echo ' </gxml>'  >> cad.gxml



#Now we are go to replace the vertex of the beam in the gcard so to palce behind the thile nr i 
#You need to come out with some functions that calculate for you x and y of each tile, you need to be somewhere whitin the tile
# For now I put the beam in 0,0,0 but it is wrong






cd  /home/jlab3/Cad/Aer_Test #/Users/gangelini/work/clas12Tags-master/Aer_Test/
# you can use sed to replace the line your want, the original is save as a .bu file for back up
#do the same for replacing the vertex of the beam and place it behind each tile, you need to came out with an algorithm for finding the right position
# TO DO 



#the if statment changes beam_V in rich.gcard
set x = -50
set y = -10
set z = 580


if($i == 1)then
echo '-50 -10 580' >> out.txt
endif

if ($i > 1) then


	if($i >2 && $i < 7) then
	@ x = $x - 20
	@ z = $z - 10
	else if($i > 6 && $i < 11) then
	@ x = $x - 40
	@ z = $z - 20
	else if($i > 10 && $i < 17) then
	@ x = $x - 60
	@ z = $z - 30
	else if($i > 16 && $i < 23) then
	@ x = $x - 70
	@ z = $z - 40
	else if($i > 22 && $i < 31) then
	@ x = $x - 90
	@ z = $z - 50
	else if($i > 30 && $i < 39) then
	@ x = $x - 110
	@ z = $z - 60
	else if($i > 38 && $i < 49) then
	@ x = $x - 130
	@ z = $z - 70
	else if($i > 48 && $i < 59) then
	@ x = $x - 150
	@ z = $z - 80
	else if($i > 58 && $i < 100) then
	@ x = $x - 170
	@ z = $z - 100
	endif

	if($i == 2||$i == 5 || $i == 9 || $i == 14 || $i == 20 || $i == 27 || $i == 35 || $i == 44 || $i == 54 || $i == 65 || $i == 75 || $i == 85 || $i == 96) then
	@ y = $y + 20
	echo $i
	else if($i == 3) then
	echo $i
	@ y = $y - 15
	else if($i == 4 || $i == 8 || $i == 13 || $i == 19 || $i == 26 || $i == 34 || $i == 43 || $i == 53 || $i == 64 || $i == 74 || $i == 84 || $i == 95) then
	echo $i
	@ y = $y 
	else if($i == 6) then
	echo $i
	@ y = $y + 35
	else if($i == 7 || $i == 12||$i == 18 || $i == 25 || $i == 33 || $i == 42 || $i == 52 || $i == 63 || $i == 73 || $i == 83 || $i == 94) then
	echo $i
	@ y = $y - 20
	else if($i == 10 || $i == 15 || $i == 21 || $i == 28 || $i == 36 || $i == 45 || $i == 55 || $i == 66 || $i == 76 || $i == 86 || $i == 97) then
	echo $i
	@ y = $y + 40
	else if($i == 11) then
	echo $i
	@ y = $y - 35 
	else if($i == 16) then
	echo $i
	@ y = $y + 55
	else if($i == 17 || $i == 24 || $i == 32 || $i == 41 || $i == 51 || $i == 62 || $i == 72 || $i == 82 || $i == 93) then
	echo $i
	@ y = $y - 40
	else if($i == 22 || $i == 29 || $i == 37 || $i == 46 || $i == 56 || $i == 67 || $i == 77 || $i == 87 || $i == 98) then
	echo $i
	@ y = $y + 60
	else if($i == 23 || $i == 31 || $i == 40 || $i == 50 || $i == 61 || $i == 71 || $i == 81 || $i == 92) then
	echo $i
	@ y = $y - 60
	else if($i == 30 || $i == 38 || $i == 47 || $i == 57 ||$i == 68 || $i == 78 || $i == 88 || $i == 99) then
	echo $i
	@ y = $y + 80
	else if($i == 39 || $i == 49 || $i == 60 || $i == 70 || $i == 80 || $i == 91) then
	echo $i
	@ y = $y - 80
	else if($i == 48 || $i == 58 || $i == 69 || $i == 79 || $i == 89) then
	echo $i
	@ y = $y + 100
	else if($i == 59 || $i == 90) then
	echo $i
	@ y = $y - 100
	endif


sed -i.bu2 's/(-50,-10,580)/('$x','$y','$z')/' rich.gcard

echo $x' ' $y ' '$z >> out.txt #prints all of the coordinates to an output file
endif


sed -i.bu 's/out.ev/out'$i'.ev/' rich.gcard

 

# now run gemc and we create a out file different for each tile.
gemc rich.gcard -USE_GUI=0 -N=2
rm rich.gcard 
mv rich.gcard.bu2 rich.gcard.bu
mv rich.gcard.bu rich.gcard
# now we have to make a groovy script that open that file and print out an error if we don't have photons in the output
# TO DO

 
mv out$i.ev output #puts all evio files into their own directory 
@ i= $i + 1


end
