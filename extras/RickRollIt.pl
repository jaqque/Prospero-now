#
# TinyURL -- infobot module for convrting urls to TinyURLs
#          hacked up by john h. robinson, iv <jaqque@debian.org>
#

package rickroll;

my $no_rickroll; # Can't think of any situation in which this won't work..

sub rickroll::get { 
    my $line = shift;
    unless ($line =~ /^rickroll(|it)\s*(\S*)/i) {
	return '';
   }

   @parts=split / /, $line;
   #$parts[1]=~s/#/\\#/g;

   # apparently, ?method=POST is enogh to get around the POST only  SJS++
   #open F, "http@ rickroll.it 'create.php??url=$parts[1]?method=POST'|" or die "Sorry, no RickRollIt\n";
   open F, "http_post@ rickroll.it create.php 80 'url=$parts[1]'|" or die "Sorry, no RickRollIt\n";
   while (<F>){
      next unless m|.*shortURL.*>(http://rickroll.it/[^<]*)<.*|;
      $rickroll=$1;
   }
   close F;

    return $rickroll;
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

	[rickroll]

=head1 DESCRIPTION

It's OBVIOUS ... The FURS never reached ISTANBUL ... You were an EXTRA
in the REMAKE of "TOPKAPI" ... Go home to your WIFE ... She's making
FRENCH TOAST!

=head1 AUTHORS

john h. robinson, iv <jaqque@debian.org>

=cut
