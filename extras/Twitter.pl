#
# twitter -- infobot module for convrting twitter links to their respective
#			status
#          hacked up by john h. robinson, iv <jaqque@debian.org>
#

# UNICODE is broken.
# https://twitter.com/FakeAPStylebook/status/24133500843
# I f!x0r3d it. well. sorta.
# Oh, they changed the format.
# https://twitter.com/aarond/status/25312070220
# sirhc pointed it out. Need to use a better parser.
# Look, twitter is at it again
# [13:42:55] <@Alowishus> Prospero: http://twitter.com/#!/badbanana/statuses/27067195524
# [13:42:55] <Prospero> Alowishus: sorry...

package twitter;

my $no_twitter; # Can't think of any situation in which this won't work..

# I stole this from the stock quotes extra.
BEGIN {
   eval qq{
      use JSON;
   };

   $no_twitter++ if($@);
}

sub twitter::get { 
    my $line = shift;
    unless ($line =~ /twitter\.com\/(|#!\/)\w+\/status(|es)\/(\d+)/i) {
	return '';
   }

   if ($no_twitter) {
	return 'Twits require JSON module. Blame sirhc.';
   }

   my $twit=$3;
   my $RE='"text":"(.*)"}';
   #$parts[1]=~s/#/\\#/g;
   my $json='';
   my $twitter='';

   # Use the Twitter API - smaller responses.
   open F, "http@ api.twitter.com /1/statuses/show/$twit.json?trim_user=true|" or return "Fail Whale!";
   while (<F>){
      #next unless m/$RE/;
      $json .= $_;
   }
   close F;

   $json =~ m(http://s.twimg.com/images/whale_error.gif) && 
      return 'Fail Whale!';
   $twitter = decode_json ($json);
   #$twitter =~ s/\\u201[89]/'/g;
   #$twitter =~ s/\\u201[cd]/"/g;
   #$twitter =~ s/\\([^\\])/$1/g;
   return $$twitter{text};
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
