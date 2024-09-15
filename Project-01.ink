/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/

You wake up with no memory, only a headache. 
* [shake it off] -> beginning


== beginning == 
  {kindness: You're back where you started, theres only one way to go now.|The sun is hot on your fur. Wait, fur? Yes, you suddenly remember you are a little field mouse. What do mice do during the day? Oh yes, look for food!} 

* [scurry towards the red flower] -> red_flower
* [ go towards the babbling brook] -> brook

-> END

== red_flower == 
You, a little mouse, make your way over to this very large red flower. Under the flower sits a sad looking toad. He's looking down at his hands, sighing heavily every few breaths. 
* [ask the frog what is wrong] -> sad_frog
* [ignore the frog and move towards what looks like an open field] -> field
-> END

== brook == 
As you get closer, the water seems much more aggressive than you thought it would be. There is a stick that goes over to the other side, but it looks risky...
* [attempt to walk the stick bridge] -> other_side 
-> END


== sad_frog ==
As you approach the frog, you can see that he had been crying and is looking at a wrinkly picture. 
* [hello, are you alright?] -> alright
* [ I change my mind ] -> field 
->END

== happy_frog == 
You approach Mr. Frog, who is still sobbing, and tap him on the shoulder. 

"Oh! Little mouse, nice to see you again." He said cheerfully, although still filled with sadness. 

*[ "I found your picture!" ] -> happy_happy_frog
-> END

== happy_happy_frog == 
"Oh my! You found my picture! Thank you! Here, for your troubles." 

Mr. Frog reaches in his pocket, and hands you a box of matches. 
*[ take the matches] -> other_side
->END 

== alright == 
Mr. frog looks up at you, with swollen eyes. You hear him croak, and then he starts to speak. 
"Hello little mouse. It seems you've caught me at a bad time here." he solemly laughed.

* [ why are you crying? ] -> revealed 
-> END

== revealed == 
"Well, you see, this here is a drawing that my late wife had made for me. It was a picture of her and I together. I seem to have lost one half when I was fishing for flies earlier." 

*[ I can keep my eye out for the other half for you.] -> kindness 
-> END

== kindness == 
"Would you really! I would greatly appreciate that young mouse." 

Mr. Frog then pats you on the head and goes back to wallowing. 

* [continue to the field] -> field
* [ go back to where you started ] -> beginning 
-> END


== field == 
Past the flower, and through the brush, there is a small opening lined with small stones. The sun is even brighter out here. You think you see something shining from behind one of the rocks. 
 *[investigate the shiny] -> treasure
-> END 

== treasure == 
When you make it over to the rock, you find what seems to be a shiny button the color of gold. 

* [ pick up golden button ] -> middle_of_the_field 
* [ leave the button behind ] -> middle_of_nowhere
-> END

== other_side == 
{happy_happy_frog : You made your way back to the other side of the brook. You look ahead and see what looks like a little dark burrow.| The stick is wobbly, as you make your way across the branch it cracks in a few places. But thanks to your nimble mouse body, you made it across just fine.} 

{sad_frog : Along the river you see a scrap of paper, it could be Mr. Frog's |Along the edge of the river, you see what looks like a scrap of paper.}
 * { sad_frog } [that must be the other half of Mr. Frogs picture! Return it to him. ] -> collected
* {not sad_frog} [ Check it out ] -> paper

-> END 

== paper == 
Once you pick it up, you see that it's just what looks like half of a torn photo of what looks like frogs. 
*[ take it with you ]
* [ its not important, leave it behind] 
-> END 

== collected == 
You found Mr. Frog's drawing! Now you have to get it back to him. 
* [ backtrack to Mr. Frog] -> happy_frog
-> END

== middle_of_the_field == 
Thankfully you are wearing tiny mouse pants, and the button fits in the pocket almost perfectly.

As you squint further on, you can see what looks like a bunch of red berries.

* [scamper towards the berries] -> berries
* [ look around more ] -> middle_of_nowhere
-> END

== middle_of_nowhere ==
Looking around, it seems like there is nothing but dry brush. Should you make your way through the thick weeds?
* [ try your best to make it through ] -> struggle
* { treasure } [ try and slice the weeds with the button] -> jungle
* [ look for another way ] -> another_way
-> END 

== struggle == 
The weeds are almost too thick for you to get through, but you make it through just barely.
*[ brush yourself off ] -> through_weeds
-> END 

== jungle ==
The button makes it more than easy to get through the brush. As youre slicing down the weeds, you see something in the dirt. It looks like a hat small enough for a mouse!
* [ pick up the hat ] -> through_weeds

== another_way == 
There doesn't seem to be too many options, but once you take your time you realize that there is a field of what looks like red berries. 
*[investigate the berries] -> berries
-> END

== berries == 
As you get closer, the berries dont look so much like berries. Discouraged, you continue 
-> END

== through_weeds == 
-> END 
