#
# twitter -- infobot module for convrting twitter links to their respective
#			status
#          hacked up by john h. robinson, iv <jaqque@debian.org>
#          oh, sirhc provided some external code once twitter changed their
#          API.   Twitter-- (those bastards!)
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
# Note: I cold rely upon my version control. but i'm a classic programmer.
# comment out _all_ the code!
#BEGIN {
#   eval qq{
#      use JSON;
#   };
#
#   $no_twitter++ if($@);
#    eval qq{
#        use HTML::Entities
#    };
#    if ($@) { $no_twitter++};
#
#}

#The new API breaks everything.
# Screenscraping? https.
# JSON? Authentication.
# Anything else? Who knows.

sub twitter::get { 
    my $line = shift;
    unless ($line =~ /twitter\.com\/(|#!\/)\w+\/status(|es)\/(\d+)/i) {
	return '';
   }


   if ($no_twitter) {
	return q{Something went wrong. I don't know what.};
	# return q{Twits require a new API version. No one has bothered to update this module.};
	#return q{Twits require JSON module. Blame sirhc. Oh, and HTML::Entities. That's augmented4th's fault.};
   }

   return qx{pull-tweet "$line"};

   my $twit=$3;
   my $RE='"text":';
   #my $RE='tweet-text';
   #$parts[1]=~s/#/\\#/g;
   my $json='';
   my $twitter='';

   # Use the Twitter API - smaller responses.
   # Twitter updated the API. Need a key. I have no key. I get no API.
   # https://twitter.com/snipeyhead/status/344206042680397824
   # https://api.twitter.com/1/statuses/oembed.json?id=344206042680397824
   open F, "wget -q -O- --header 'Authorization: Bearer AAAAAAAAAAAAAAAAAAAAAI1fRgAAAAAA4FgeahtQsNrkPLU89jKX3HOpVgQ%3D3Pi2eN0QEjaTnCDX0uNdtUxjXlDPrrBP9uCFr1JLM' https://api.twitter.com/1.1/statuses/show/$twit.json?trim_user=true|" or return "Fail Whale!";
   # open F, "http@ api.twitter.com /1/statuses/show/$twit.json?trim_user=true|" or return "Fail Whale!";
   # open F, "http@ api.twitter.com /1/statuses/show/$twit.json?trim_user=true|" or return "Fail Whale!";
   #open F, "http@ twitter.com /The_new_API_stinks/statuses/$twit.json|" or return "Fail Whale!";
   while (<F>){
      last if m/$RE/;
   }
   close F;

   $json =~ m(http://s.twimg.com/images/whale_error.gif) && 
      return 'Fail Whale!';
   $twitter = decode_json ($json);
   #$twitter =~ s/\\u201[89]/'/g;
   #$twitter =~ s/\\u201[cd]/"/g;
   #$twitter =~ s/\\([^\\])/$1/g;
   return decode_entities($$twitter{text});
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
