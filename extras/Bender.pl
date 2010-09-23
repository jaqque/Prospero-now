#
# bender -- infobot module for jason s. quotes
#          hacked up by john h. robinson, iv <jaqque@debian.org>
#
# Data gratuitously swiped from #kernel-panic by zengolfer
# the code is very very very very close to Zippy.pl. purely
# coincidence.  i swear . . .
#

package bender;

my $no_bender; # Can't think of any situation in which this won't work..

sub bender::get { 
    my $line = shift;
    unless ($line =~ /^troll[!? ]*$/i or $line =~ /^be bender\?*$/i
    	or $line =~ /^be .*$/i ) { 
	return '';
   }

    unless (@trolls) { # read data unless it's been read already.
	print "Reading...\n";
	while (<DATA>) {
	    chomp;
	    push @trolls, $_; 
	}
    }
   
    if ($no_bender) { # ..but just in case :-)
	return "Out on a bender . . ." if $main::addressed;
    }
    
    my $troll = $trolls[rand(@trolls)];
    my $verb = substr ($troll,-1,1) eq "?" ? "asks" :"sez";
    

    #return "bender ".$verb.": ``".$troll."''";
    return "<bender> $troll";
}

1;

=pod

=head1 NAME

Bender.pl - the #kernel-panic troll

=head1 PREREQUISITES

None.

=head1 PARAMETERS

bender

=head1 PUBLIC INTERFACE

	[troll|be bender]

=head1 DESCRIPTION

It's OBVIOUS ... The FURS never reached ISTANBUL ... You were an EXTRA
in the REMAKE of "TOPKAPI" ... Go home to your WIFE ... She's making
FRENCH TOAST!

=head1 AUTHORS

Rich Lafferty (mendel) <rich@vax2.concordia.ca>
modified by john h. robinson, iv <jaqque@debian.org>

=cut

__DATA__
*sigh* I guess I'm the only one around here with any culture
-(8){|}
<[eMBee> good morning <bender> [eMBee: no it isn't
Ah, it's nothing a law suit won't cure.
Argh. The laws of science be a harsh mistress.
Bite my colossal metal ass.
Bite my shiny metal ass.
Forget your stupid theme park! I'm gonna make my own! With hookers! And blackjack! In fact, forget the theme park!
Hey, I got a busted ass here! I don't see anyone kissing it.
Hey, that's my last beer you bastard. I'll kill you!
Honey, I wouldn't talk about taste if I was wearing a lime green tank top.
I came here with a simple dream, a dream of killing all humans.
I can't keep running people over. I'm not famous enough to do get away with it.
I hate people who love me.  And they hate me.
I have over 100 machines with redhat and absolutely zero debian
I like musical theater and I like to cook
I refuse0r to use0r your stupid little hacker speak0r
I've been told that I would be gay if it weren't for that whole sleeping with men thing
In the event of an emergency, my ass can be used as a floatation device.
Is he dumb or just ugly?
Oh my God, I'm so excited i wish I could wet my pants!
Outlook Express is the best mail client
You know the secret of traditional robot cooking? Start with a good high-quality oil, then eat it.
Would anyone like to contribute to my defense fund?
[eMBee: hey how about that, it really is still morning
ah, so I guess you prove your point, you are always a dork, so you don't even realize it
argh!!!!!!!!
bender is a jack of all trades, even mastered a few of them
bender smacks the crap out of jaqque
bitchx sucks
but like I said, I'm a smart drunk
but you can't make sweeping generalizations
but, I as a casual dork, realize when I am being a dork
crap is a universal word, like fuck
dammit, I hate my boss!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
dear god this is annoying, this lame ass hacker got into another system
did I miss something?
did jaqque write it
dork
dorqque
error error error
heh, what made you such an expert?
hey asshole, wanna remove the ban?
hey, I just offer the same help that I get here
how crappy
it's all pretty fucking0r lame0r to me0r
jaq_craqque
jaqque's a debian freak, they don't read directions
jaqque: WTF?!?!?!?
jaqque: damn you, stealing my joke
jaqque: do you realize that you are a dork?
jaqque: huh?
jaqque: sorry to hear about you being a card carying debian geek
jaqque: yer bot sucks0r
jaqque: your keyboard is screwed up, it keeps spitting out 3's instead of e's
jesus people, quit talking so much
just an example of a good idea mucked up by jaqque's puppy love
just when you least expect it.... *BAM* stoner logic is thrown in your face again
let's send you off for some studies
maybe you should kiss my ass
of course, I consider myself a smart drunk, I understand my limitations and and don't try to do things I shouldn't
oh great a bot with jaqque's 'tude
oh shit, here we go with generik trying to be witty again
oh yeah, just what we need, more useles crap to clutter up the channel
ok, I think I have found the world's stupidest hacker
ok, stupid question time.
pebkac
pobody doesn't like me
slack is crap too
stupid hacker, should have erased the logs
that is pretty lame
that's a jaq_quote
that's boxes, not boxen
then it looks like you are SOL
they are even making bots act like me
um, what does it do act like a bitch and let jaqque flirt with it all day?
well, I'm gonna reboot to see if it fixes itself
well, if I were going to reinvent the wheel, I'd probably make it round
what a crappy bot
when all else fails, use something that actually works
yeah, I've been .08 and sober
you are a dorqque
you are argueing a point against someone with more experience in the field than you
you are so right, nobody likes me, at least not when they have to impress the snipe
