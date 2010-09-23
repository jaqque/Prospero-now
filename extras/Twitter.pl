#
# twitter -- infobot module for convrting twitter links to their respective
#			status
#          hacked up by john h. robinson, iv <jaqque@debian.org>
#

# UNICODE is broken.
# https://twitter.com/FakeAPStylebook/status/24133500843
# I f!x0r3d it. well. sorta.

package twitter;

my $no_twitter; # Can't think of any situation in which this won't work..

sub twitter::get { 
    my $line = shift;
    unless ($line =~ /twitter\.com\/\w+\/status(|es)\/(\d+)/i) {
	return '';
   }

   my $twit=$2;
   my $RE='"text":"(.*)"}';
   #$parts[1]=~s/#/\\#/g;
   my $twitter='';

   # Use the Twitter API - smaller responses.
   open F, "http@ api.twitter.com /1/statuses/show/$twit.json?trim_user=true|" or die "Fail Whale!\n";
   while (<F>){
      next unless m/$RE/;
      $twitter=$1;
   }
   close F;

   $twitter =~ s/\\u201[89]/'/g;
   $twitter =~ s/\\u201[cd]/"/g;
   $twitter =~ s/\\([^\\])/$1/g;
    return $twitter;
}

1;

=pod

=head1 NAME

Twitter.pl - Turns twitter URLs into their statuses

=head1 PREREQUISITES

http@

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
