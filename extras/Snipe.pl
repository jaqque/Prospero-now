#
# bender -- infobot module for jason s. quotes
#          hacked up by john h. robinson, iv <jaqque@debian.org>
#
# Data gratuitously swiped from #kernel-panic by zengolfer
# the code is very very very very close to Zippy.pl. purely
# coincidence.  i swear . . .
#

package snipe;

my $no_snipe; # Can't think of any situation in which this won't work..

sub snipe::get { 
    my $line = shift;
    unless ($line =~ /^bitch[!? ]*$/i or $line =~ /^be snipe\?*$/i
    	or $line =~ /^sqod$/i) { 
	return '';
   }

    unless (@bitches) { # read data unless it's been read already.
	print "Reading...\n";
	while (<DATA>) {
	    chomp;
	    push @bitches, $_; 
	}
    }
   
    if ($no_bitch) { # ..but just in case :-)
	return "No Snipes here . . ." if $main::addressed;
    }
    
    my $bitch = $bitches[rand(@bitches)];

    return $bitch;
}

1;

=pod

=head1 NAME

Bitch.pl - the #kernel-panic bitch

=head1 PREREQUISITES

None.

=head1 PARAMETERS

bender

=head1 PUBLIC INTERFACE

	[bitch|be snipe]

=head1 DESCRIPTION

It's OBVIOUS ... The FURS never reached ISTANBUL ... You were an EXTRA
in the REMAKE of "TOPKAPI" ... Go home to your WIFE ... She's making
FRENCH TOAST!

=head1 AUTHORS

Rich Lafferty (mendel) <rich@vax2.concordia.ca>
modified by john h. robinson, iv <jaqque@debian.org>

=cut

__DATA__
:-P
Alowishus - HEY!  Get your bitch ass into the kichen and get me a beer!
Alowishus - remind me to kick your ass next time I see you..
Alowishus - what the hell for... I sure as hell aint gonna be cooking any time soon
And anyway, I don't like this train of thought...
Because everybody loves me...
Biggus Dickus...
GOD this guy on Yahoo chat won't leave me alone!!
I can do what I want. Nyah.
I've been going out too much... lol.. geting into trouble
JAQQUEY!!!!
LOL  Hey hey!  How's it hanging?
LOL I doubt it, I_Machine... You could NEVER tire me out.. lol
LOL It seems like everyone spends half the time trying to figure out wtf I'm saying..
Man took message for his wife - - - Dr's office called , said Pabst Beer was normal
Oh jaqque.... what a big packet you have..............
Oh jeez.. its brian... what now?
Okay... apparently the old thing is kicking in... I'm tired... I'm gonna go drink some ensure, put on my depends, and go to bed
Oooh baby... dual boot me.. oh yeah.. you know what turns me on
Remind me to kick your ass next time I see you, mike
Snipe gives pacneil a wedgie
Snipe has bellybutton issues tonight. :-( owwie
Snipe has the biggest balls of them all
Snipe helps eMBee make like a bridge and get over it
Snipe is confoozled
Snipe is having a mid-mid-life crisis
Snipe is sometimes referred to as "Alice-in Chains", but the ropes are usually strong enough...
Snipe listens to "A lap dance is so much better when the stripper is crying"
Snipe needs another beer
Snipe punches Shawn 26 times
Snipe rides the short bus to school
Snipe scowls
Snipe sings "These boots are made for walkin.... and thats just what they'll do... "
Snipe smacks jaqque
Snipe sucks down a zengolfer mojo milkshake
Snipe wonders what color the sky is in Zengolfer's World (tm)
So there.  Nyah.
That has BETTER not make it to Prospero's files..
This feels weird... there's so much extra space in my mouth now. :D
This is a test of the Emergency Fuck you service. Had this been a real insult, somebody would have come up and bitch slapped you personally, This concludes our test of the Emergency Fuck you service. you may now go back to your regularly scheduled work day
WCW Jaqdown
Yeah RIGHT... he's the bitch who stood me up! LOL
You shush
ack. meeting
bender has a child????
i hate all of you
jaqque - LMAO  WTF are you doing??
lets not get carried away, bender
markw - LOL  You little prick
markw - LOL I don't know, and I'm not talking to you about backups, jerkface
my mother would kill me if she knew...
ooooh baby... hurt me!
that would all depend on *where* I was chained, and how long the chain was...
wah.
you smokin crack again?
Yeah, I hate it when I get ingrown hairs on my scrotum
* snipe jams her cold wet nose up tessier's asshole
* snipe watches her ulcer grow and grow and grow... its like ... a chia-ulcer
Chef: no, finally going to devote some time towards inventing that thing that lets you stab people in the face over the internet
azuresky: I *do* love jaqque.... but I would rather eat rancid tuna out of my own ass than have him date my sister.  lol
I'm hoping I can fake it well enough that he won't notice that mine's full of pudding
It turns her labia into a YAYbia!
I just got a ring of caramel all over my boob
the bigger they are, the funnier they look when their asses get kicked
Prospero: suck it, bitch
Alowishus: are you suffering from pre-partum anxiety, pookiebear?
