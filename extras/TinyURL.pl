#
# TinyURL -- infobot module for convrting urls to TinyURLs
#          hacked up by john h. robinson, iv <jaqque@debian.org>
#

package tinyurl;

use URI::Escape;

my $no_tinyurl; # Can't think of any situation in which this won't work..

sub tinyurl::get { 
    my $line = shift;
    unless ($line =~ /^tinyurl\s*(\S*)/i) {
	return '';
   }

   my @parts=split / +/, $line;
   my $request=uri_escape ($parts[1]);

   open F, "http@ tinyurl.com 'api-create.php?url=$request'|" or die "Sorry, no TinyURL\n";
   while (<F>){
      $tinyurl=$_;
   }
   close F;

    return $tinyurl;
}

1;

=pod

=head1 NAME

TinyURL.pl - turns big urls into TinyURLs

=head1 PREREQUISITES

http@

=head1 PARAMETERS

bender

=head1 PUBLIC INTERFACE

	[tinyurl]

=head1 DESCRIPTION

It's OBVIOUS ... The FURS never reached ISTANBUL ... You were an EXTRA
in the REMAKE of "TOPKAPI" ... Go home to your WIFE ... She's making
FRENCH TOAST!

=head1 AUTHORS

john h. robinson, iv <jaqque@debian.org>

=cut
