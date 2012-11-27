#
# zippy -- infobot module for Zippy the Pinhead quotes
#          hacked up by Rich Lafferty (mendel) <rich@vax2.concordia.ca> 
#
# Data gratuitously swiped from fortune-mod-9708, the 'fortune' program.
#

package joe;

my $no_joe; # Can't think of any situation in which this won't work..

sub joe::get { 
    my $line = shift;
    unless ($line =~ /^jobs[!? ]*$/i or $line =~ /^be joe\?*$/i) { 
	return '';
   }

    unless (@jobs) { # read data unless it's been read already.
	print "Reading...\n";
	while (<DATA>) {
	    chomp;
	    push @jobs, $_; 
	}
    }
   
    if ($no_joe) { # ..but just in case :-)
	return "YOW! I'm an INFOBOT without AMERICAN JOBS!" if $main::addressed;
    }
    
    my $job = $jobs[rand(@jobs)];

    return $job;
}

1;

=pod

=head1 NAME

Zippy.pl - Yow!  Am I having fun yet?

=head1 PREREQUISITES

None.

=head1 PARAMETERS

zippy

=head1 PUBLIC INTERFACE

	[yow|be zippy]

=head1 DESCRIPTION

It's OBVIOUS ... The FURS never reached ISTANBUL ... You were an EXTRA
in the REMAKE of "TOPKAPI" ... Go home to your WIFE ... She's making
FRENCH TOAST!

=head1 AUTHORS

Rich Lafferty (mendel) <rich@vax2.concordia.ca>

=cut

# http://www.brainyquote.com/quotes/authors/j/joe_biden.html
# Retrieved 2012-10-03

# http://www.cbsnews.com/video/watch/?id=7424154n
# transcript by jaqque, reviewed by sirhc 2012-10-03

__DATA__
Let's just be smart this time. I'm looking for smart.
When the stock market crashed, Franklin Roosevelt got on the television and didn't just talk about the princes of greed. He said, 'Look, here's what happened.'
Now, people when I say that look at me and say, 'What are you talking about, Joe? You're telling me we have to go spend money to keep from going bankrupt?'. The answer is yes, that's what I'm telling you.
It is my view that we cannot conduct foreign policy at the extremes.
The devastating punch we took on September 11th still reverberates throughout American society.
Here at home, when Americans were standing in long lines to give blood after the attack on the World Trade Center and the Pentagon, we squandered an obvious opportunity to make service a noble cause again, and rekindle an American spirit of community.
Arafat's departure has created an awesome opportunity.
But I was amazed at how organized the Palestinian election authority was, how competent they were in setting up their polling places and the poll workers they had.
I support immediate financial assistance to the newly elected Palestinian president. Now, I don't know what those numbers will be, and I don't know how it's going to be framed.
Look, freedom is an overwhelming American notion. The idea that we want to see the world, the peoples of the world free is something that all of us subscribe to.
No matter how you cut it, this real debate on personal accounts is about the legitimacy of Social Security; it's not about the solvency of Social Security.
The Middle East is hopeful. There's hope there.
This is absolutely bizarre that we continue to subsidize highways beyond the gasoline tax, airlines, and we don't subsidize, we don't want to subsidize a national rail system that has environmental impact.
Just talk to me as a father - not what the Constitution says. What do you feel?
No one making less than $250,000 under Barack Obama's plan will see one single penny of their tax raised, whether it's their capital gains tax, their income tax, investment tax, any tax.
This nuclear option is ultimately an example of the arrogance of power.
You get a lawyer whether you're in a military tribunal or whether you're in a federal court, number one. The attorney general decided that the court with the biggest - with the greatest venue, with the best jurisdiction was the New York court. That was the right decision to make.
Well, I'm telling them two things. One is that, look, this is going to be something when the American people realize - once it's passed - that, A, it does take care of preexisting conditions; B, you're insurance rates aren't going to skyrocket; C, the insurance companies aren't going to be running the show like they were before; D, you're going to be in a position where you can keep your insurance that you have. That once the American public realizes that, you're going to get a reward for this. They're going to be rewarded.
You know we're going to control the insurance companies.
The Recovery Act is working, but it's going to continue to work. It's not over. A lot's going to happen this summer. And even after the summer, there's more to come with the act.
The Romney-Ryan tax plan will raise taxes on middle class families with a child, one or more children, by an additional two thousand dollars a year. How they can justify raising taxes on the middle class that's been buried for the last four years. How in Lord's name can they justify raising their taxes with these tax cuts?
