#
# bender -- infobot module for jason s. quotes
#          hacked up by john h. robinson, iv <jaqque@debian.org>
#
# Data gratuitously swiped from #kernel-panic by zengolfer
# the code is very very very very close to Zippy.pl. purely
# coincidence.  i swear . . .
#

package sit;

my $no_sit; # Can't think of any situation in which this won't work..

sub sit::get { 
    my $line = shift;
    unless ($line =~ /^assman[!? ]*$/i or $line =~ /^be sit\?*$/i
    	or $line =~ /^sqod$/i) { 
	return '';
   }

    unless (@whines) { # read data unless it's been read already.
	print "Reading...\n";
	while (<DATA>) {
	    chomp;
	    push @whines, $_; 
	}
    }
   
    if ($no_whine) { # ..but just in case :-)
	return "No Sits here . . ." if $main::addressed;
    }
    
    my $whine = $whines[rand(@whines)];

    return $whine;
}

1;

=pod

=head1 NAME

Sit.pl - the #kernel-panic whipping-boy

=head1 PREREQUISITES

None.

=head1 PARAMETERS

bender

=head1 PUBLIC INTERFACE

	[whine|be sit]

=head1 DESCRIPTION

It's OBVIOUS ... The FURS never reached ISTANBUL ... You were an EXTRA
in the REMAKE of "TOPKAPI" ... Go home to your WIFE ... She's making
FRENCH TOAST!

=head1 AUTHORS

Rich Lafferty (mendel) <rich@vax2.concordia.ca>
modified by john h. robinson, iv <jaqque@debian.org>

=cut

__DATA__
 /msg christel show me your boobs!
"i have people skills, dammit!"
"show me your boobs"?  hahaha
Alowishus: serve your civic duty and keep your ass in that chair until 5
Roxus: ass has nothing to do with sex!
Roxus: tell her you that you can't go because you're going fishing with spicyjack a la brokeback mountain
Roxus: what kind dumb ass writer mixes cardinal numbers with written numbers in the same sentence?
ThunderChicken: my ass gets tired
Wolfie: claymore == big ass sword
also got my ass kicked by a high school kid the other night
ass embargo?
ass has nothing to do with sex!
bah, teachers have easy ass job.  do 2-3 1hr lectures a week, spend rest of time partying
better watch your ass before you tie the knot :P
but then you are kissing his ass everytime you talk to him
congrats. you got out of it before pound you in the ass prison
damn my ass is sore
did they ass rape you while you were sleeping?
does it also mean it's impossible for someone to pull shit out of his ass and put it on paper?
dude just kicks major ass with a hachet
enjoy your ass probing
fuck ass longer to get citizenship
giving two week notice rocks.  they're not giving me jack to do.  so i'm getting paid to sit on my ass all day.  i should have given 4 week notice
gonna kick his ass when you see him?
goog and amd is carrying my ass for the day
guy in marketing at my last job would always wear these tight ass jeans to work all the time.  squeeked when he walks.  he couldn't bend over to pick up the ping pong balls
haha, go freeze your ass off
haha, my friend is kissing my ass now
haha, my friend is kissing my ass now cuz i told him to buy nvda before their earnings report
haha, yes, you ass :P
heh, i'll know if my ass is bleeding when i wake up
hewow!   anyone awake!? i adm druinkk!  hurray@
hitchhike.  ass or grass
hot garage sucks ass :(
how dangerous is your butt?
i am a michael jordan!
i am cow, i eat grass.  methane gas, comes out of my ass
i could have sold yesterday.  i'm getting ass pounded today
i don't want anyone to know my ass is sore
i dunno man, girls say the stupidest things some time
i finally tried the game you recommended. i got my ass raped.
i get complimented on my ass all the time
i hope this guy gets his ass kicked
i just want to do what zengolfer did.  sit on my ass and get handed money at the end of the day
i like to eat animals?  who doesn't
i still have problems with it every once in a while when i spar.  instinctfully fall back or look away.  then i get my ass pounded :(
i was freezing my ass off out there.
i was kicking ass too
i wonder how cows are handling the rising temps
i'm a BAMF.  bad ass mother fucker
i've never had a job where my ass wasn't in front of a computer all day :\
i've seen on more than on ocassion a fat ass sitting on a rascal riding around the buffet line
if god didn't want us eating horses, he wouldn't have made them out of meat
if it's just some bill from 1992 he used to wipe his ass with, i'd say no
interesting.  google maps detected my ass slow connection and gave me a small map instead normal size :\
is it considered homosexual for one guy to notice another guy's eyes?
is jaqque's ass very vocal?
is that cat a kiwi?
it was some nasty ass shit
it's like over 100 degrees in midwest.  cows are freaking fat
jesus christ, i think i just wet my pants.
just don't wipe your ass while you're cooking and you won't have to wash your hands so often
kicks sirhc in the nuts
linagee: congrats.  you got out of it before pound you in the ass prison
linagee: make sure he doesn't slip a condom in your ass while he's talking though
linagee: that's one big ass piece of dog shit
linagee: they're phallic metaphors.  they're telling you to prepare for an ass raping
linagee: you suck man.  how can you claim to be gay if you don't have a single piece of pink?  christel...a _breeder_ is kicking your ass on the pink front!
loather-work: did they ass rape you while you were sleeping?
loather-work: enjoy your ass probing
loather-work: i dunno where vista is
loather-work: you planning on living in bum town?
lol, don't bail.  get paid to sit on your ass doing nothing
make sure he doesn't slip a condom in your ass while he's talking though
make sure you buy your books in advanced online used or you'll get ass raped without going to prison
man, chosing the wrong employer can bite you in the ass even after you leave.  that blows
man, my ass is still sore as hell.  my face is burning like a bitch too
man, right now, i'm so glad i have a job where i sit on my ass all day.  if i had a job where i had to walk around, i'd have to use a sick day
man, this clam chowder tastes like ass chowder
man, you need one fat ass finger to hit 5 instead of 2
market kicked my ass today :(
metalslug: similar grills probably get their ass sued off in states
my ass and hands are numb though
my ass gets tired
my ass is fine!!!
my dad does this lame ass comb over that looks horrible.  i don't want that to happen to me
my dream was to retire, having a big house, big tv, and big couch.  i'd sit on my ass all day and watch dvds
no, teenagers are asses
real men use udp
seb-: does it also mean it's impossible for someone to pull shit out of his ass and put it on paper?
she can't shop alone?
sih: you'd kiss ass too if you were afraid of losing your job and didn't have another one lined up
sirhc: from what i learned in the movies, women like being treated as objects
sirhc: i get complimented on my ass all the time
sirhc: my ass is fine!!!
sirhc: that's more ass backwards than clicking start to shutdown a computer
sirhc_wrk: unless you have an extremely long penis, you'd land on your ass doing a maneuver like that
sitting on my ass reading for 10 hrs is painful
so i don't get hungry for a while since i'm sitting on my ass all day
so when are we seeing christel's boobs?  uh, i mean kimihia's comics
sure, i just need motivation to get my ass out there to train
takes a long ass time to increase quota
tell both companies to kiss your black ass and you don't need no stinkin' insurass
temp control of water sprayed on your ass too
tessier: annoying ass wasp
tessier: ass :P
tessier: i could have sold yesterday.  i'm getting ass pounded today
tessier: please stay out of my ass
that a long ass way to travel
that guy better get some nice ass rapings in prison
that's a long ass title
that's a tiny ass house
that's because i keep it real
that's more ass backwards than clicking start to shutdown a computer
that's one big ass piece of dog shit
that's some crazy ass shit man
there's a girl at my school that kicks my ass too
they got ass fucked in 2004
they're phallic metaphors.  they're telling you to prepare for an ass raping
tiny ass bars != menus
tits are good
ugh, time for crappy ass meeting
unless you have an extremely long penis, you'd land on your ass doing a maneuver like that
what if you got trapped in the trailer window while getting out?  and then the horse ass rapes you?
what kind of expensive ass soda do you buy?
what's monkey chow?  bananas?
wow, i tried grass fed beef for the first time tonight
yo momma so stupid, she spent three hours in a revolving door looking for the door knob
you get returns of poop deck on cruise ships?
you're gonna say that at a gay bar on accident one of these days and gonna get your ass kicked
zengolfer: cuz it's a nice ass spot
zengolfer: just don't wipe your ass while you're cooking and you won't have to wash your hands so often
zengolfer: time for a cocaine filled road trip

