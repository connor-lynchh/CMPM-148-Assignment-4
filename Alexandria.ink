VAR Intelligence = 0
VAR Strength = 0
VAR Agility = 0
VAR Charisma = 0
VAR Luck = 0 
VAR attribut_points = 20
VAR dummy = 0


 
Before we begin you must first select your attribute points. There is a total of 10 points to divy up and no attribute can go higher than 3

+random attributes
    ~ Intelligence = RANDOM(1,3)
    ~ Strength = RANDOM(1,3)
    ~ Agility = RANDOM(1,3)
    ~ Charisma = RANDOM(1,3)
    ~ Luck = RANDOM(1,3)
    
     -> start

+select attributes
    - Intelligence 
     +1
        ~ Intelligence+=1 
        -> strength 
     +2
        ~ Intelligence+=2 
        -> strength 
     +3
        ~ Intelligence+=3 
        -> strength 

=== strength ===
    - Strength
    +1
        ~Strength+=1 
        -> agility
    +2
        ~Strength+=2
        -> agility
    +3
        ~Strength+=3
        -> agility

=== agility ===
    -Agility
    +1
        ~Agility+=1
        ->charisma
    +2
        ~Agility+=2
        ->charisma
    +3
        ~Agility+=3
        ->charisma
    
=== charisma ===
    -Charisma
    +1
        ~Charisma+=1
        -> luck
    +2
        ~Charisma+=2
        -> luck
    +3
        ~Charisma+=3
        -> luck

=== luck ===
    - Luck
    +1
        ~Luck+=1
        -> start
    +2
        ~Luck+=2
         -> start
    +3
        ~Luck+=3
        -> start
    
    
=== start ===
*start
- You are a survivor of the massacre of your hometown bronstone. Feeling as fast as you can from the Snakemen army. Going back would clearly spell death for yourself thus you are presented with three different paths. You main goal being to reach the city of Alexandria which should be a safe heaven for those that enter its walls.You also have little to no food/water supplies on this journey so be on the look out for some or else death will come sooner than you would like. Bounty hunters are also known to patrol this area taking anyone they see back to the snake army for gold. 

+[Go West] -> West 
+[Go North] -> North

+[Go South] -> South

=== North ===
You begin walking North further into the blazing hot desert not knowing where this path might take you. You start slow as the hours pass on and you need to take rest. Before you decide to stop you see something in the distance. It looks to be a town of sorts. Very small but you can see encampments have been built around it as it seems the housing could not fit everyone. You get closer and see that these people like you are refugees running from the snakemen army. You decide what to do next
+[speak to the locals and refugees] 
-> sandworm_path
+[look around  for someting useful that could aide you on your journey]
-> sword_path

=== sandworm_path ===
You ask around the town to see where most of the people of coming from and some you do recognize from your home town Bronstone. You share some pleasantries and ask them if they know how to get to Alexandria. One of the refugees respond "I am not going back into that cursed desert! Large sandworms prowl the land I lost most of my group getting here." Another person speaks up saying "well if you just know what there weakness was you would have been able to avoid them easly. I would think that as a native of this land it would be common knowledge that the cacti ward off the sandworms" The first one that spoke starts to move over to the other man looking to start a fight but other refugees get involved to break up the arugment. After the comotion there are some that are willing to join you on this journey to Alexandria but you could also go alone as you will be able to part with some supplies. 
    +[You tell the refugees that they can follow you to Alexandria hoping that there is more strength in numbers rather than being alone]
    ->Find_sandworm_refugees
    +[You decide it might be better to go alone rather than traveling with a party that might slow you down]
    ->Find_sandworm

=== Find_sandworm_refugees
-> Find_sandworm

=== Find_sandworm ===
{Find_sandworm_refugees} As you continue you journey with your newly accquired party you think that things are looking up. One of the refugees withing the group believes that they know the way to Alexandria. Seeing as no one else really has a clue where to go everyone follows him. A day or two goes by and during the middle of the third day a rumbling comes from below the ground. The refugees begin to panic and off in the distance you can see the sand dunes shifting and moving in a singular direction. One of the refugees calls out "Sandworm!". 
+[Everyone begins to run]
    ->refugee_run

{not Find_sandworm_refugees}
As you continue your journey towards Alexandria with some new supplies that were graciously given by the small little town you begin to hear a rumbling in the sand after a couple of hours. You look around to see in the distance the sands shifting and moving rapidly towards your direction. Something large is coming  and you have nothing to defend yourself with so you start to run.
+[run]
->sandworm_death_ending



=== sandworm_death_ending ===
You run as fast as you can and you  can now see the form of a large sandworm coming your way. You remember that their weakness is the cacti that inhabit this area but you do not see any at all. You keep running as fast as you can but you start to tire and soon enough the sandworm catches up. Your feet slip below you and you are sucked into the mouth of the sandworm its insides scorching hot as magam flows through its insides. You take your last breath as your body burns away inside the sandworm.
->END

=== refugee_run ===
The whole party begins to run in the sand dunes to get away from this rapidly approaching sandworm. It is not long though until the sandworm gets closer and closer until it is right up on you. When the whole party thinks hope it lost one of the refugees pulls out cactus from their pack. This istantly redirects the sandworm away from the group and off into the distance. Everyone thanks the refugee for their bravery and quick thinking. You are just thinking how lucky you are to be in this group elsewise things could have ended much more poorly. 
+[continue onwards]
-> Alexandria_reached_with_noble_and_sandworm_dead

=== Alexandria_reached_with_noble_and_sandworm_dead ===
Another two days go before you can see the towering walls of Alexandria in the distance. Some of the refugees who had been walking turn into a full sprint for the city. People arrive at the gates at various times but all told to wait for the others to catch up before entering. Once everyone is together you all approach the guards at the front of the gate. You explain your story and are a little sketpical at first but one of the refugees comes forward. They pull down their hood and the guards give an immediate recognition towards the person as they begin to kneel. They say "We did not expect to find you outside the city gates princess Satine". The woman gives a quick nod and the guards quickly rush the party within the city walls. Princess Satine tells the group that she can personally house them in the royal palace. You didn't think that this is the treatment that you would be given when entering Alexandria but you are more than happy to accept the offer. You spend the rest of your days safetly within the palace away from the snakemen army.
-> END

=== sword_path ===
+{Charisma >=2 and Intelligence >=2} [You begin to look around town for useful equipment and supplies that will aide you on your journey. They happens to be a blacksmith in this small town and the owner is willing to part with one of the many blades they have made. There is an overabundance in fact since he does not get much buisness but is constantly be supplied with materials to make the weapons. You thank him for his generosity and you decide it might be best to speak with the locals]
-> sword_accquired
+[You look around town for anything useful asking people if you can take anything that they are willing to part with but no one budges. Perhaps it is best to speak with some of the locals about Alexandria and how to get there]
-> speak_with_locals_v2


=== sword_accquired ===
-> speak_with_locals_v2


=== speak_with_locals_v2 ===
You ask around the town to see where most of the people of coming from and some you do recognize from your home town Bronstone. You share some pleasantries and ask them if they know how to get to Alexandria. One of the refugees respond "I am not going back into that cursed desert! Bounty hunters roam the land constantly, I almost lost my entire group to a troop of bounty hunters to get to this town." Some of the refugees agree that the bounty hunters are dangerous but others are willing to join you on your journey. You could stay solo as well
+[You tell the refugees that they can follow you to Alexandria hoping that there is more strength in numbers rather than being alone]
->attacked_by_bounty_hunter_refugees
+[You decide it might be better to go alone rather than traveling with a party that might slow you down]
->attacked_by_bounty_hunter


=== attacked_by_bounty_hunter_refugees ===
{sword_accquired}
+[You begin to travel with the group heading a direction you believe will take you to Alexandria. A day passes uneventfully only the hot sun being anyones concern at the moment. Then there is a sound and one of the refugees falls over an arrow piercing their back. You see an archer on a sand mound shooting down at the group. All the refugees seem to be fleeing in different directions but you stand firm. With sword in hand and a shield that you were also able to accquire you make your way over to the bounty hunter]
    -> sword_live_refugees
    {not sword_accquired} 
    + [You begin to travel with the group heading a direction you believe will take you to Alexandria. A day passes uneventfully only the hot sun being anyones concern at the moment. Then there is a sound and one of the refugees falls over an arrow piercing their back. You see an archer on a sand mound shooting down at the group. All the refugees seem to be fleeing in different directions and you runaway as well.]
    -> no_sword_death

=== no_sword_death ===
You run as fast as you can dodging arrows shoots that whizz right by you. You think you have made it out of his sight until something hits you right through the chest. The pain comes quick and you fall over beginning to bleed out. A figure walks up to and you assume its the bounty hunter as a sword is raised up their head and comes straight down through your heart. Your life snuffed out in an instant
->END
    
=== sword_live_refugees
You take the bounty hunter by surprise and in an instant the fight is over with you stab him right through the back. The refugee return to thankful for taking the bounty hunter out. You scavenge what you can off the body and you head for Alexandria once more
    +[press on]
    ->Alexandria_reached_with_noble_and_sword


=== Alexandria_reached_with_noble_and_sword ===
Another two days go before you can see the towering walls of Alexandria in the distance. Some of the refugees who had been walking turn into a full sprint for the city. People arrive at the gates at various times but all told to wait for the others to catch up before entering. Once everyone is together you all approach the guards at the front of the gate. You explain your story and are a little sketpical at first but one of the refugees comes forward. They pull down their hood and the guards give an immediate recognition towards the person as they begin to kneel. They say "We did not expect to find you outside the city gates princess Satine". The woman gives a quick nod and the guards quickly rush the party within the city walls. Princess Satine tells the group that she can personally house them in the royal palace. You didn't think that this is the treatment that you would be given when entering Alexandria but you are more than happy to accept the offer. The Princess also thanks you for saving the group from the bounty hunter using your quick thinking. You spend the rest of your days safetly within the palace away from the snakemen army.
->END

=== attacked_by_bounty_hunter ===
    {sword_accquired}You begin to travel alone heading in a  direction you believe will take you to Alexandria. A day passes uneventfully only the hot sun being of concer. Then there is a sound which resembles an arrow whizzing by. You look to your left and see an arrow embedded within the sand. You look around to then see an archer on a sand mound shooting down at you. You get your sword ready as well as a shield that you found lying in the town.
    +[prepare for a fight]
    -> sword_fight_solo
    
    {not sword_accquired} You begin to travel alone heading in a  direction you believe will take you to Alexandria. A day passes uneventfully only the hot sun being of concer. Then there is a sound which resembles an arrow whizzing by. You look to your left and see an arrow embedded within the sand. You look around to then see an archer on a sand mound shooting down at you. You begin to run away as you have no way of defending yourself.
    +[run]
    ->no_sword_death


=== sword_fight_solo ===
    You rush towards the archer blocking arrows with your shield. A couple stick into shield as you get closer and closer until you are right up on him. The fight is swift as the archer is totally caught off guard by you even an attempting to get close to him. A couple swings with your sword as the archer makes some lousy parrys with his own sword offers an opening for you to stab him right through the chest finishing him off. 
    + [You scavenge the body for supplies and make your way towards Alexandria as the archer had directions on him to get to the city]
    -> sword_fight_solo_ending
    
=== sword_fight_solo_ending ===
    You reach Alexandria alone. The massive walls stretching for miles and miles and as you approach the gates the guards hail you. You explain your story to the guards and without much hesitation they allow you into the city. With some food now in your stomach you can't help but feel a sense of hope for the future as the safety of the city envlopes you. 
    ->END

=== South ===
    -You begin walking south further into the blazing hot desert not knowing where this path might take you. After awhile you find yourself slowing and need to take rest somewhere. You find a cave with some mining equipment laid outside seemingly abandonded. You could take shelter there to rest for awhile or you can keep pushing on. 
        + Keep pushing on 
            You keep going not knowing how much further you can make it as the sun beats down on you relentlessly. You beign to slow more and before you know it you have to come to a full stop. You didn't think it would end this way as your body rapidly heats up. In your final moments you think about how things could have gone differently if you have chosen a different path 
            ->END
        +Take rest in the cave
        -In the cave you find a nice place to sit down, shaded from the outside sun. 
            +{Luck >=2}[Something shiny catches your attention] -> rare_mineral
            +rest
            -You take a short rest from the sun and wake up hungry and thirsty. You know that if you don't find some water soon you may start suffering from dehydration. You need to keep moving forward as there doesn't seem to be any food supplies here in this cave.
                +You go out from the cave
                    Now being well rested and cooled off you journey out from the cave with the sun beginning to set as the moon makes an appearance in the sky above. 
                    -> traveller
                    
            
        

= rare_mineral
    -You see some sort of shiny rock buried within the walls of the cavern. Its size must be no bigger then the palm of your hand and maybe with some force you could pull it out. 
        +{Strength <2} [You try with all your might even using the mining equipment to extract the rock but you can barely get it to move before your arms become to tired to continue] 
             You decide to take your rest in the cave after being beaten by this rock. Afterwhich you continue your trek onwards towards Alexandria where ever it might be.     
                -> traveller
        +{Strength>=2}[With your strength you are able to remove the rock from its position within the wall and it shines with a slight blue hue. You feel a slight shock as you pick it up but it quickly passes]
            -With the shiny rock now in your possession you decide its time to move out from the cavern after taking a short rest. The sun seems to be setting as the moon begins to present itself in the sky. -> rare_mineral_found

=== rare_mineral_found ===
-> traveller


=== traveller ===
 As the night slowly encroaches on the dwindling daylight you find yourself more and more in need of water. Something catches your attention just over the mound of a sand hill infront of you. A faint aura of light along with some rising smoke possibly indicating a campfire someone might have setup. You weigh your options
    + Investigate the light
        You climb up the sand dune to find a lone man sleeping by a campfire. Along with him looks to be a donkey carrying heavy loads of cargo as the bags droop down over the donkey's sides. Your stomach starts to grumble and you think there might be food in those saddlebags. You think about what to do next 
        -> investigate_light
        
    + Avoid the light and keep moving on keeping a wide distance from the light
       - You keep a wide distance between you and the light. You never who might be out here and that could have been snakemen for all you know. As you move on your stomach begins growl and lack of water has made you parched to the point of exhaustion. Without food or water you struggle to see how much farther you can make it out here in the sand dunes. 
            +[you take your final steps as dehydration has competely set in and you are starting to lose all control over your body. The sun begins to rise once more and the heat comes back hotter then ever. You take last breath before you finally collapse to be buried beneath the shifting sands.] ->END



=== investigate_light ===
 + Wake the sleeping man
    The shake the man gently not trying to cause a big comotion. The man shakes a little bit and jolts up from his slumber. He reaches for his belt where you didn't notice a sword had been sheathed. The man directs the sword towards you asking who you are and what your business is. You tell him that you have esacped your home which resided in Bronstone and are now seeking refugee in the city of Alexandria. You tell him you don't know where the city is and could very much use any assistance he is willing to give
        ->persuasion_check_south
 +Investigate the saddlebags
            -You sneakly make your way over to the saddlebags and it is clear the donkey is asleep. You find inside some food and water that you think might be enough to keep you going for at least a week. You could take some now and leave without the man notcing though you still don't know if the direction you are going is the right way to Alexandria. Perhaps this man could be of some help? You think of what to do next
            +take some food and run 
                you take as much as you can from the saddlebags filling your pockets and pack to the brim. You hurry out of the campsite and into the night with your recently accquired goods. As the hours go on the sun slowly begins to rise and you can feel the temperatures rise dramatically. With no real direction you wander aimlessly across the desert. With food and water now that might last you a couple of days you would think that would be enough time to find some sort of civilization
                -> agility_check_stolen_food
            + take some food and hide it and talk to the man that is asleep
            You hide as much food as you can in your pack that you have been carrying. You move towards the man that is asleep. With a gentle push the move jolts up from his slumber to where he then draws his sword from a sheathe that you did not see until now. The man directs the sword towards you asking who you are and what your business is. You tell him that you have esacped your home which resided in Bronstone and are now seeking refugee in the city of Alexandria. You tell him you don't know where the city is and could very much use any assistance he is willing to give.
            -> persuasion_check_south_bad

=== persuasion_check_south_bad ===
-> persuasion_check_south

=== persuasion_check_south ===
    +{persuasion_check_south_bad} [The man seems swayed by your story you think and agrees to help you reach Alexandria as he was headed there already. The journey takes a couple of days and you nible on the food that you stole from the man making sure to hide the food from the travellers view when you are eating. Another day goes by and you finally see the massive walls of Alexandria come into view]
    -> Jailed
    +{Charisma >=2 and rare_mineral_found and not persuasion_check_south_bad} [The man is swayed by your story and gives you directions to Alexandria he even offers you food and water in exchange for the shiny blue rock you accquired earlier. The man is so moved that he even walks with you to Alexandria as he was making his way there anyway.]
    -> Alexandria_reached_with_traveller_good
    +{Charisma >=2 and not rare_mineral_found} [The man is swayed by your story but only points you in the right direction for Alexandria as he tells you to "be off now before I change my mind on killing ya"]
    -> cacti
    +{Charisma < 2} [The man is not convinced in the slightest and moves closer with his swords. It doesn't take long before you fall to the ground bleeding from the stab wound the man just caused. The man says "heard other stories just like yours and believed them which only lead to an eventual backstab due to my kind generosity but this is the last straw". As you lay there in the cold night slowly slipping away from reality you can't help but think what you could have done differently]
    ->END


=== Jailed ===
    As you reach the gate the guards stop you and ask you to state your buisness. The traveller slides in front of you giving the guards the story of how you and he got here and the conversation turns quiter till you can barely hear what they are saying. After a few moments the traveller waves you over towards the gate and as you get close you are suddenly grabbed by the guards. They say "You are under arrest for stealing personal property of another you will serve a year in prison that is deep within the dungeons of Alexandria. You are baffled by whats going on and have no words to express your anger. You are moved inside the city past serveral citizens that give you a nasty look. You are thrown into the dungeons deep below the city. Its not how you imagined you end up in Alexandria but at least a little part of you is happy that you made it despite the circumstances.
    ->END

=== Alexandria_reached_with_traveller_good ===
    You and the traveller make your way through the vast desert. The traveller points out every so often the dangers of the area and you never really heard of any of these threats when you were living in Bronstone. From gigantic sand worms that spew lava to cacti that make you hallucinate that the world around you is a colorless plane as you walk a single path where one wrong step will send you infintely falling into the great unknown. It takes a couple of days but you can finally see the city. Its massive walls creating an imposing figure that should deturr any hostile force from attacking the city. As you come to the gates the guards at the front ask you to state your business and you tell them the same story you told the traveller. The Guards without much hesitation allow you to walk through the gates with the traveller following right behind you. The first sights you see of the city is the refugee encampment. It seems like more than just Bronstone has been attacked by the snakemen army. You try to see if you recognize anyone but no one catches your eye. The traveller recommends finding a spot to setup camp as there is no space avaliable to house any of these refugees. You agree with him and as you start to settle down you think about all the horrible things that could have gone wrong and journey but just come to thought that you made it to Alexandria where for the moment you are safe and thats all that matters.
    -> END

=== cacti ===
Knowing where you are going now you make haste to the destination. As the sun begins to rise the heat sets back in you find yourself once again increasingly in need of water and food. Unfortunately the traveller was not willing to part with any of his supplies so only through sheer will and determination might you find your way to Alexandria. Hours go by as the temperatures rises further. You don't know if you can make it much further until you spot something. Something that is green and pink? Its hard to make out but you get closer and see a field of cacti that strechs on for miles. You desperately need water and the cacti might just be what you need. 
+[You attempt to extract water from one of the cacti and prick yourself. Very quickly the world turns black and white and you find yourself balancing on a very thin path. You don't know what is going on but you begin to feel yourself slip and before you know it you are falling deep into the unkown. Perhaps this was a better way to go then perish under the blazing sun?] 
->END



=== agility_check_stolen_food ===
    {Agility == 3} You have been running forever in the desert ever since you were a little child the heat seemingly never to affect you as much as you would think it would. As time went on that changed but you still were able to keep up your speed improving it drastically and now with the food and water to generate enough energy to move at full pace it doesn't take you long before you find something worth investigating. 
        +[investigate]
        - You come to the coast of the desert. A place you thought you would never see in your life time yet here you are. The ocean is just right there and it feels as though you are free to do whatever you want. But then you start remembering the recent events and refocus yourself to the task at hand. On the coast you see a village most likely dealing with fishing as quiet a large dock accompanies it. You go into town asking for directions to Alexandria and the people seem very welcoming and willing to give asisstance. The harbormaster directs you to one of the larger boats docked at the port and says that the captain of the boat was heading to Alexandria to drop off some goods. The captain is accepting of you coming aboard as long as you do some work around the boat and you are more than happy to agree to the terms.Before you set off though a little girl tugs on your clothes. She says that she misses her Mom and Dad and believes that they are in Alexandria. 
        -> Charisma_check_captain
        
=== Charisma_check_captain ===
    +{Charisma >=2} [You go to the captain and tell him about the little girl]
        He is convinced through a very short conversation as he too has childern and wouldn't want to let this girl go without her parents for too long. All of you hop aborad the boat and set sail for Alexandria. The journey isn't too long as only a couple days pass before you dock at the port of Alexandria. 
        -> Demon
    +{Charisma < 2} [You go to the captian and tell him about the little girl]
        He is not convinced and does not want to have to deal with feeding another mouth on this journey. You keep trying but in the end his word is final and you depart without the girl.
        -> Alexandria_reached_with_captain
    
=== Demon ===
 As you are walking from the port you feel like you are forgetting something or someone. You remeber the little girl that you decided to help back at the fishing village was nowhere to be seen. You walk back towards the ship and there you find the little girl standing in the middle of the boat. A low rumble starts below your feet as you look around to see if its affecting anyone else and you notice buildings shaking and citizens falling over as the rumbling becomes more intense. You look back to where the girl is and she is no longer there but what takes her place is something so horrifying that you can barely hold eye contact before you have to look away. You get off the docks and you now see from the boat this figure that is rapidly increasing in size. It appears to be made out of shadowy essence as the space it fills like a black void. Though human in shape the legs are inverted and large horns sprout from atop the head. The fingers must be 20 feet long with point ends that could destory an entire block of the city. As you continue backing away you feel the life from within slowly fading and within a couple of seconds you drop to the floor dead. Though you made it to Alexandria what you brought with you brought its destruction. 
 ->END

=== Alexandria_reached_with_captain ===
    - The boat comes to a stop at the port of Alexandria as the captain delivers his goods to the harbormaster there. You thank him for his help getting her and now you can safetly relax behind the ginormous walls of Alexandria.
    ->END


=== West ===
You travel for miles and miles in blazing hot desert. With food and water supplies dwindling you don't think you can make it much longer out here. Eventually you spot something in the distance. It seems shrouded in fog and as you get closer the building that are visible look run down as if these are ruins of sorts. You check around the entire perimeter and come to reason that this is a temple a layla due to the offerings surrounding the ruins. There might be an offering of food within the temple that could be helpful you think but you think about your options first. 
+[enter into the fog hoping to find something useful for your journey]
->into_the_temple
+[leave this place reasoning that something foul is at play with this fog cloud that covers this once sacred place]
-> away_from_temple


=== into_the_temple ===
+{Intelligence >= 2} [you can barely see anything within the fog but you feel your way around so as not to trip over any objects or run into any walls. You are able to come inside the main part of the temple where the fog seems to dissipate. In the center of the room lies a pedastool and you can see a simple looking pocket watch. You go over to pick it up]
-> pocket_watch_accquired

===pocket_watch_accquired ===
    Once you pick up the watch is almost as if time seems to slow for a moment and then picks back up to normal speed. You leave the main chamber to find that all the fog is gone. It is no problem finding the exit but once you do you are faced with 3 humanoid figures. Details are hard to make out on them but you can tell from their outlines that they are not pushovers.
    +[uh oh]
    -> confrontation_with_bounty_hunters
    
+{Intelligence < 2} [You search the temple to find anything useful but after an hour or so nothing seems to catch your attention. You slowly make your way out before you find yourself confronted by 3 imposing looking people.]
-> confrontation_with_bounty_hunters


=== confrontation_with_bounty_hunters ===
    You never thought you would be in this situation but here you are staring down what you believe to be bounty hunters. The three men look ready to strike at any moment. One yells out "We can take you the easy way or the hard way it doesn't really matter to us". You think of your possible options but you are very limited as your back is essentially aganist a wall as fog  cloud floats behind you. Instead of trying to resist you think it might be best to let them take you and try a different way to escape. 
    +[wait]
    -> with_the_bounty_hunters


=== away_from_temple ===
    You beging to walk away from the temple thinking you will find nothing useful there and continue in the direction you were heading before. After a couple of minutes you think you hear something behind you and you go to check but nothing seems to be there. Another couple minutes go by and that sound you heard before comes back louder this time. You turn around and once again nothing, absolute slience. You face forward again and before you know it you are being charged byabnormally tall human. You fall flat on your back as you are pinned down. Another person comes over and handcuffs you. You hear a voice call out "looks like we got another runner from town".  He continues "The snakemen are going to pay as handsomely for another laborer". The one pinning you down now picks you up hovering you in the air for a little bit before he drops you to the ground. The one that handcuffed you says "Alright now no funny business, if you try anything stupid we will put you down for good". 
    -> with_the_bounty_hunters
    
=== with_the_bounty_hunters ===
     As you walk with the bounty hunters you keep trying to think how you might escape from them but you odds at this point seem very slim. Your best chance maybe is to catch them off guard during the night thus you wait until then to make your move.
     +{not pocket_watch_accquired and Strength == 3}
      [You wait until night time until all the bounty hunters are asleep. You try to wiggle out of the manacles but no luck there it seems like a more brute force method is required. You are able to with raw strength break free of manacles around your arms. Thinking you are in the clear you begin to start moving away from the bounty hunters until you realize that one of them is missing. You turn around to see the tall one that pinned you earlier looming over you sword in hand. The bounty hunter says " We did warn you". With that the bounty hunter stabs you directly in the heart causing you to topple over ending your life in an instant.]
     ->END
     +{Strength < 2 and not pocket_watch_accquired} 
     [You try everything you can to get out of the shackles but nothing seems to work. You give up tired and frustrated but also scared now of what happens next for you.]
     -> Laborer_ending
     +{pocket_watch_accquired}
     [You wait until the others fall asleep before you make your move you begin trying to wiggle your way out of the shakcles. After a minute or so you accidentally rattle the chains of the cuffs so louldy that the bounty hunters start to wake up. They notice what you are trying to do and move towards their swords. You feel a slight virbration in your pocket. It grows stronger and stronger until the pocket watch you picked up pops out of your pocket and into the sand. An alarm sound goes off and before you know you are someplace else entirely. A dark room but you can see a faint light in the distance and the sound of seagulls in the air.]
     -> pocket_watch_ending
     
=== pocket_watch_ending ===
    You move towards to the light until you comne to a balcony that overlooks a massive city with walls the height of skyscrapers. This must be Alexandria but how did you get here? The last thing you remember was the pocket watch giving off an alarm sound and then you were here. Whatever the case you are safe now and you no longer have to worry about the threats that tried to stop you from reaching this city.
    ->END
    
=== Laborer_ending ===
    It takes a couple of days but you finally see what you have been trying to avoid, the snakemen army. You resisted as much as could but now there is no chance of breaking free. The rest of your days will be spent working away for the army and their needs. You will either die from exhuastion or from an execution due to a minor mistake. Either way your future is sealed and you reflect on what you could have done differently.
    ->END



=== actual_ending
    It acutally ended bittersweet
->END

