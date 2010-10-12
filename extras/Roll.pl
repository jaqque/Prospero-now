#
# roll -- infobot module for rolling dice
#          hacked up by john h. robinson, iv <jaqque@debian.org>
#

package roll;

my $no_roll; # Can't think of any situation in which this won't work..

# I stole this from the stock quotes extra.
BEGIN {
   eval qq{
      use Games::Dice "roll";
   };

   $no_roll++ if($@);
}

sub roll::get { 
    my $line = shift;
    unless ($line =~ /^roll\s/) {
	return '';
   }

   if ($no_roll) {
	return 'No dice.';
   }

   @rolls=();
   @dice=split /\s+/, $line;
   shift @dice; # remove the roll command
   for (@dice) {
     $die=roll $_;
     push @rolls, $die if defined $die;
   }

   return join " ", @rolls;
}

1;

=pod

=head1 NAME

Roll.pl - Rolls dice! D&D style

=head1 PREREQUISITES

Some Games::Dice perl module.

=head1 PARAMETERS

bender

=head1 PUBLIC INTERFACE

	[twitter]

=head1 DESCRIPTION

It's OBVIOUS ... The FURS never reached ISTANBUL ... You were an EXTRA
in the REMAKE of "TOPKAPI" ... Go home to your WIFE ... She's making
FRENCH TOAST!

=head1 AUTHORS

john h. robinson, iv <jaqque@debian.org>

=cut
