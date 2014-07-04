#
# TinyURL -- infobot module for convrting urls to TinyURLs
#          hacked up by john h. robinson, iv <jaqque@debian.org>
#

my $no_sebcode; # Can't think of any situation in which this won't work..
# 2007-10-09 (Happy Leif Erikson Day!) I have no idea what the $no_sebcode
# is for; it was part of the template (TinyURL.pl) that I used.

sub sebcode { 
    my $line = shift;
    unless ($line =~ /^^where(?:'?s|\s+is)?(?:\s+t(he|eh))?(?:\s+.*?seb.*?'?s)?\s+code[?]?/i ) {
	return '';
    }

    #my $delta = time - 1171299600;    # 2007-02-12 ( date -d '2007-02-12 09:00:00-0800' +%s )
    #my $delta = time - 1194384656;    # 2007-11-06 ( date -d '2007-11-06 13:40:56-0800' +%s )
    #my $delta = time - 1255741878;    # Sat, 17 Oct 2009 01:11:18 GMT ( date -d 'Sat, 17 Oct 2009 01:11:18 GMT' +%s) http://seberino.org/tinylisp-1.0.tar.gz
    # The change from 1.0 to 1.0 was minor README updates (according to theseb)
    #my $delta = time - 1259202024;    # Thu, 26 Nov 2009 02:20:24 GMT ( date -d 'Thu, 26 Nov 2009 02:20:24 GMT' +%s) http://seberino.org/tinylisp-1.0.tar.gz
    #my $delta = time - 1371502035;    # Mon Jun 17 13:47:15 PDT 2013 ( date -d 'Mon Jun 17 13:47:15 PDT 2013' +%s) https://github.com/cseberino/parser_generator
    #my $delta = time - 1380693120;    # Wed Oct 02 00:52:45 2013 -0500 ( gdate +%s -d  '2013-10-02 00:52 -0500') https://bitbucket.org/seberino/maxwell/src
    my $delta = time - 1395008415;    # 2014-03-16 ( gdate +%s -d  'Sun, 16 Mar 2014 22:20:15 +0000') https://bitbucket.org/seberino/maxwell/rss
    # TODO: faster method would be to fetch the updates RSS and then
    # parse the first <pubDate> you came across.
    my $wait_seconds = $delta % 60;
    my $wait_minutes = int +( $delta / 60  % 60 );
    my $wait_hours = int +( $delta / ( 60 * 60 ) % 24 );
    my $wait_days = int +( $delta / ( 60 * 60 * 24 ) );

    $days="day" . ($wait_days==1 ? "" : "s");
    $hours="hour" . ($wait_hours==1 ? "" : "s");
    $minutes="minute" . ($wait_minutes==1 ? "" : "s");
    $seconds="second" . ($wait_seconds==1 ? "" : "s");

    my $commify = sub {
        my $text = reverse $_[0];
        $text =~ s/(\d\d\d)(?=\d)(?!\d*\.)/$1,/g;
        return scalar reverse $text;
    };

    #$sebcode = qq(Well, $who, we've been waiting )
    $sebcode = qq(Well, $who, it's been )
        . $commify->($wait_days)
        . qq( $days, )
        . $commify->($wait_hours)
        . qq( $hours, )
	. $commify->($wait_minutes)
	. qq( $minutes and )
	. $commify->($wait_seconds)
	. qq( $seconds ) . q(since we've last seen |seb|'s (aka seb--, theseb, sebacate, probably others) code.);
	#. qq( $seconds ) . q(to see |seb|'s code.);
    
    if (rand(1) < .1) {
        $sebcode .= q( I hope you're not holding your breath.);
    }

    return $sebcode;
}

1;

=pod

=head1 NAME

SebCode.pl - Tells us how many days since |seb| has repleased his code

=head1 PREREQUISITES

None.

=head1 PARAMETERS

None.

=head1 PUBLIC INTERFACE

	[Where is seb's code?]

=head1 DESCRIPTION

How long have we been waiting for the code?
Now we can find out!

=head1 AUTHORS

john h. robinson, iv <jaqque@debian.org>

based upon routine by sirhc
an idea developed by RevChas

=cut
