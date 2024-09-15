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

*  [scurry towards the red flower] -> red_flower
* [go towards the babbling brook] -> brook

-> END

== beginning_2 == 
You're back at the start!

+ [go to the red flower] -> red_flower
+ [ go to the brook ] -> brook
-> END

== red_flower == 
You, a little mouse, make your way over to this very large red flower. 

+ [move towards what looks like an open field] -> field
* [ look around ] -> sad_frog
* { paper } [return Mr. Frog's drawing ] -> happy_frog
-> END

== brook == 
As you get closer, the water seems much more aggressive than you thought it would be. There is a stick that goes over to the other side, but it looks risky...
+ [attempt to walk the stick bridge] -> other_side 
-> END


== sad_frog ==

You look around and realize that there is a frog sitting underneath a smaller red flower. 
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
*[ take the matches] -> beginning_2 
->END 

== alright == 
Mr. frog looks up at you, with swollen eyes. You hear him croak, and then he starts to speak. 
"Hello little mouse. It seems you've caught me at a bad time here." he solemly laughed.

* [ why are you crying? ] -> revealed 
-> END

== revealed == 
"Well, you see, this here is a drawing that my late wife had made for me. It was a picture of her and I together. I seem to have lost one half when I was fishing for flies earlier." 

*[ I can keep my eye out for the other half for you.] -> kindness 
* {paper} ["Do you mean this picture?"] -> happy_happy_frog 
-> END

== kindness == 
"Would you really! I would greatly appreciate that young mouse." 

Mr. Frog then pats you on the head and goes back to wallowing. 

* [continue to the field] -> field
* [ go back to where you started ] -> beginning 
-> END


== field == 
Past the flower, and through the brush, there is a small opening lined with small stones. The sun is even brighter out here. {treasure :  | You think you see something shining from behind one of the rocks. }
 * [investigate the shiny] -> treasure
 * { secret } [ go towards the lady bugs] -> home
 * {through_weeds} [ Maybe the button will help? ] -> treasure
-> END 

== treasure == 
When you make it over to the rock, you find what seems to be a shiny button the color of gold. 

* [ pick up golden button ] -> middle_of_the_field 
* [ leave the button behind ] -> middle_of_nowhere
-> END

== other_side == 
{happy_happy_frog : You made your way to the other side of the brook. You look ahead and see what looks like a little dark burrow.| The stick is wobbly, as you make your way across the branch it cracks in a few places. But thanks to your nimble mouse body, you made it across just fine.} 

* {sad_frog} [ There's a piece of paper by the stream, Check it out ] -> paper
* [check out the burrow] -> dark_tunnel
+ {dark_tunnel} [ you already went over here, go back to the start] -> beginning_2 

-> END 

== other_side_after_frog == 
You're back across the brook. 

*[ go towards the hole] -> dark_tunnel
* [Go back] -> beginning_2 
-> END 

== paper == 
Once you pick it up, you see that it's just what looks like half of a torn photo of what looks like frogs. 
*[ take it with you ] -> dark_tunnel
-> END 

== dark_tunnel == 
Ahead of you is a small hole, it leads underground. Should you check it out?

+[ yes ] -> inside
+ [ no ] -> beginning 
-> END
== inside == 
Once you make it inside, you realize it is too dark to see. 

* {happy_happy_frog} [Use the Matches Mr.Frog gave you] -> lit_hole
+ [Go back the other way] -> beginning_2
-> END 

== lit_hole == 
Inside the hole, you can see a box. 

When you open the box, you see a ripe strawberry!

*[Eat it up] -> full
-> END 

== full == 
Your stomach is full. You have energy to keep exploring... 
+[ go back to the start] -> beginning_2 
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
* [ pick up the hat ] -> secret
-> END 

== secret == 
Under the hat, there is a ripe strawberry! 

*[ eat it up ] -> full

-> END 

== another_way == 
There doesn't seem to be too many options, but once you take your time you realize that there is a field of what looks like red berries. 
*[investigate the berries] -> berries
-> END

== berries == 
As you get closer, the berries dont look so much like berries. Discouraged, you continue. You get closer and realize its a bunch of lady bugs! 
* [continue on... you feel a memory coming back to you] -> home
-> END

== home == 
As you go past the lady bugs, you start to remember that this place looks familiar. 

As you think harder, you remember that this is where your little mouse house is!

*[ run home ] -> front_door
-> END

== front_door == 
You're at your front door...

* {full >= 1} [ go inside and sleep, you're plenty full] -> end_game
* {full <= 0 } [you're still wide awake and hungry, you cant go to bed now! ] -> beginning_2 
-> END 

== through_weeds == 
After cleaning yourself off, you realize that there's nothing that you can see. There's too many weeds in the way. Maybe if you could cut them down...
* [go back to the field] -> field
-> END 

== end_game == 
You've had a long day as a little mouse. Time for you to go to bed to get ready for tomorrow...
-> END 
