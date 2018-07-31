use strict;
use warnings;

our %configuration;



sub build_G4
{	
	my %detector = init_det();

	$detector{"name"}        = "Detector";
	$detector{"mother"}      = "OpticalGasVolume";
	$detector{"description"} = " Detector mother volume";
	$detector{"pos"}         = "-200*cm 0*cm 620*cm";
	$detector{"rotation"}    = "ordered: yzx 0.0*deg -90.0*deg 25.0*deg";
	$detector{"color"}       = "29995b";
	$detector{"type"}        = "Box";
	$detector{"dimensions"}  = " 300*cm 300*cm 5*cm"; 
	$detector{"material"}  = " Air_Opt";
	$detector{"sensitivity"} = "rich";
	$detector{"hit_type"} = "rich"; 
	$detector{"identifiers"} = "sector manual 1 pmt manual 1 pixel manual 1";
	$detector{"style"}       = 0;


	print_det(\%configuration, \%detector);
}


1;
