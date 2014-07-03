#
# NSFW -- infobot module for convrting urls to NSFW.in urls
#          hacked up by john h. robinson, iv <jaqque@debian.org>
#

package nsfw;

my $no_nsfw; # Can't think of any situation in which this won't work..

sub nsfw::get { 
    my $line = shift;
    unless ($line =~ /^nsfw(|it)\s*(\S*)/i) {
	return '';
   }

   @parts=split / /, $line;
   #$parts[1]=~s/#/\\#/g;

   open F, "http_post@ nsfw.in create.php 80 'url=$parts[1]'|" or die "Sorry, no RickRollIt\n";
   while (<F>){
      next unless m|>(http://nsfw.in/[^<]*)<.*link_arrow|;
      $nsfw=$1;
   }
   close F;

    return $nsfw;
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

	[nsfw]

=head1 DESCRIPTION

It's OBVIOUS ... The FURS never reached ISTANBUL ... You were an EXTRA
in the REMAKE of "TOPKAPI" ... Go home to your WIFE ... She's making
FRENCH TOAST!

=head1 AUTHORS

john h. robinson, iv <jaqque@debian.org>

=cut
