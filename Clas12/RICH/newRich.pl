#!/usr/bin/perl -w

use strict;
use warnings;
use lib ("$ENV{GEMC}/api/perl");
use utils;
use geometry;
use materials;
use mirrors;




sub help()
{
	print "\n Usage: \n";
	print "   materials.pl <configuration filename>\n";
 	print "   Will create rich materials\n";
	exit;
}

# Make sure the argument list is correct
# If not pring the help
if( scalar @ARGV != 1)
{
	help();
	exit;
}



require "./bank.pl";
require "./G4.pl";
require "./mirrors.pl";
require "./aeromaterial.pl";




define_material();
define_aerogel();
build_G4();
define_bank();
define_hit();
buildMirrorsSurfaces();

