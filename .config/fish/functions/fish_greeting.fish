
function fish_greeting

	# Greeting messages
	set powered_msgs \
		"In the beginning there was nothing, which exploded." \
		"The trouble with having an open mind, of course, is that people will insist on coming along and trying to put things in it." \
		"Stories of imagination tend to upset those without one." \
		"In ancient times, cats were worshipped as gods; they have not forgotten this." \
		"\"I meant,\" said Ipslore bitterly, \"what is there in this world that truly makes living worthwhile?\"
Death thought about it.
CATS, he said eventually. CATS ARE NICE.\"" \
		"Five exclamation marks, the sure sign of an insane mind." \
		"It's not worth doing something unless someone, somewhere, would much rather you weren't doing it." \
		"It is said that your life flashes before your eyes just before you die. That is true, it's called Life." \
		"Why do you go away? So that you can come back. So that you can see the place you came from with new eyes and extra colors. And the people there see you differently, too. Coming back to where you started is not the same as never leaving." \
		"If cats looked like frogs we'd realize what nasty, cruel little bastards they are. Style. That's what people remember." \
		"DON'T THINK OF IT AS DYING, said Death. JUST THINK OF IT AS LEAVING EARLY TO AVOID THE RUSH." \
		"I'll be more enthusiastic about encouraging thinking outside the box when there's evidence of any thinking going on inside it." \
		"There is a rumour going around that I have found God. I think this is unlikely because I have enough difficulty finding my keys, and there is empirical evidence that they exist." \
		"Just erotic. Nothing kinky. It's the difference between using a feather and using a chicken." \
		"She was already learning that if you ignore the rules people will, half the time, quietly rewrite them so that they don't apply to you." \
		"I'd rather be a rising ape than a falling angel." \
		"Getting an education was a bit like a communicable sexual disease. It made you unsuitable for a lot of jobs and then you had the urge to pass it on." \
		"He'd been wrong, there was a light at the end of the tunnel, and it was a flamethrower." \
		"It's still magic even if you know how it's done." \
		"The presence of those seeking the truth is infinitely to be preferred to the presence of those who think they've found it." \
		"There are times in life when people must know when not to let go. Balloons are designed to teach small children this." \
		"Evil begins when you begin to treat people as things." \
		"His philosophy was a mixture of three famous schools -- the Cynics, the Stoics and the Epicureans -- and summed up all three of them in his famous phrase, 'You can't trust any bugger further than you can throw him, and there's nothing you can do about it, so let's have a drink.'" \
		"Inside every old person is a young person wondering what happened." \
		"If there was anything that depressed him more than his own cynicism, it was that quite often it still wasn't as cynical as real life." \
		"We who think we are about to die will laugh at anything." \
		"Do you not know that a man is not dead while his name is still spoken?" \
		"Aziraphale collected books. If he were totally honest with himself he would have to have admitted that his bookshop was simply somewhere to store them. He was not unusual in this. In order to maintain his cover as a typical second-hand book seller, he used every means short of actual physical violence to prevent customers from making a purchase. Unpleasant damp smells, glowering looks, erratic opening hours - he was incredibly good at it." \
		"Fantasy is an exercise bicycle for the mind. It might not take you anywhere, but it tones up the muscles that can. Of course, I could be wrong." \
		"The three rules of the Librarians of Time and Space are: 1) Silence; 2) Books must be returned no later than the last date shown; and 3) Do not interfere with the nature of causality." \
		"Sometimes glass glitters more than diamonds because it has more to prove." \
		"Scientists have calculated that the chances of something so patently absurd actually existing are millions to one.
But magicians have calculated that million-to-one chances crop up nine times out of ten." \
		"\"The female mind is certainly a devious one, my lord.\"
Vetinari looked at his secretary in surprise.
\"Well, of course it is. It has to deal with the male one.\"" \
		"If you don't turn your life into a story, you just become a part of someone else's story." \
		"The intelligence of that creature known as a crowd is the square root of the number of people in it." \
		"The entire universe has been neatly divided into things to (a) mate with, (b) eat, (c) run away from, and (d) rocks." \
		"Chaos is found in greatest abundance wherever order is being sought. It always defeats order, because it is better organized." \
		"Over the centuries, mankind has tried many ways of combating the forces of evil... prayer, fasting, good works and so on. Up until Doom, no one seemed to have thought about the double-barrel shotgun. Eat leaden death, demon..." \
		"There isn't a way things should be. There's just what happens, and what we do." \
		"No one is actually dead until the ripples they cause in the world die away..." \
		"Even if it's not your fault, it's your responsibility." \
		"I do note with interest that old women in my books become young women on the covers... this is discrimination against the chronologically gifted." \
		"Many people could say things in a cutting way, Nanny knew. But Granny Weatherwax could listen in a cutting way. She could make something sound stupid just by hearing it." \
		"Coffee is a way of stealing time that should by rights belong to your older self." \
		"But here's some advice, boy. Don't put your trust in revolutions. They always come around again. That's why they're called revolutions." \
		"Only in our dreams are we free. The rest of the time we need wages." \
		"Night poured over the desert. It came suddenly, in purple. In the clear air, the stars drilled down out of the sky, reminding any thoughtful watcher that it is in the deserts and high places that religions are generated. When men see nothing but bottomless infinity over their heads they have always had a driving and desperate urge to find someone to put in the way."

	# Randomly pick a message
	set chosen_msg (random)"%"(count $powered_msgs)
	set chosen_msg $powered_msgs[(math $chosen_msg"+1")]

	# Output it to the console
	printf (set_color 99FFA5)"%s \n" $chosen_msg

end

