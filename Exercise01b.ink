/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Basic Choices
 - Knot structure
 - Recurring choices
 - Conditionals in descriptions
 - Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/
-> beginning

== beginning == 
    Here it is. The chasm that holds so much history. You sit at the edge, tied and harnessed securely. You are all but ready to dive, but you feel like you don't have much of a choice.
    Failure to bring back anything will only lead to more trouble for you. God knows you've already had enough. 
    You have your phone with you, if anything. Just get something of value, and get out.
* [Grab your rope and climb down] -> the_descent
* [Step back] -> cowardice

== the_descent == 
    It's a long descent; that's for sure. 
    
    As you slowly lower yourself down the cliffside, the phone in your bag begins to speak.
    
    "Helloooooooo? Hello?"
* [Stop climbing and look at phone] -> the_call
* [Ignore and keep going] -> persisting_climbing

== the_call == 
    A face takes up most of the screen, and there's no decline button. 
    {persisting_climbing: "You don't look very happy, but this is important, so just hold on."}
    {persisting_climbing: |"I can't see very much from wherever you are...} {persisting_climbing: "}Anyway, I'm trapped inside somewhere, and need some help! I was just collecting some rocks from the river, and it swept me down into a tunnel at the bottom of the chasm!"
    
    The water at the bottom of the chasm hardly counts as a river. The water rises higher much further to the west. Either they had a long journey, or there's something else going on.
    
* ["What's in it for me?"] -> gamble_help
* [Stay silent] -> silent_climbing


== persisting_climbing == 
    You stay silent.
    ___________________________________________________________________________________________________
    The phone continues to talk.
    
    "Ok, well, I'm still going to talk..."
    
    Oh my god it's going to keep talking.
    
* [Stop climbing and look at phone annoyedly] -> the_call
    
== gamble_help ==
    YOU: "What's in it for me?"
    ___________________________________________________________________________________________________
    {persisting_climbing: |"Really? Goodwill isn't enough of a reward for you? Where's your heart?"}
    {persisting_climbing: "I see, you're the type to only speak up when you want something. Hmm."}
    {persisting_climbing: |"..."}
    "Well, there's some broken junk in the room with me. It seems that the river drifts a handful of junk down into here sometimes."
    "Let's see...colorful beads, rusted machinery bits, some antique jewelry, cool fossilized rocks...OOH!"
    "...maybe some JEWELS would entice you?"
    
    The phone changes from the face, to orange gems encased within a stone wall. Looks like you'd need to find something to be able to get those out.
    
    That's if you even REALLY wanted them. The antique jewelry sounded like a better money grab, and less effort. Even then...there could be better things to find if you spend your time on your actual mission. 
    
    * ["We'll see."] -> the_search_begins
    
== silent_climbing ==
    You stay silent.
    ___________________________________________________________________________________________________
    {persisting_climbing: "You know I can't see a thing, right? Can you even hear me...? ...Whatever."}
    "I'm still going to guide you, even if you don't answer. It's not like I have many other options here."
    * [Finish your descent down the chasm and land at the bottom] -> the_search_begins
== the_search_begins == 
    {gamble_help: YOU: "We'll see."}
    {gamble_help: ___________________________________________________________________________________________________}
    After putting your phone away, you finally make it to the bottom of the chasm. You unhook your rope from your harness, and think on the "phone call."
    How are they even contacting you from a cave? How is the connection even that strong? How long have they been down here?
    {gamble_help: And that's not even taking into consideration what they have in the room with them. Is there actually any of those items the person described? Or is it a trap?}
    There's a lot of unanswered questions there, but you do have a mission to fulfill. One that's not prioritizing charity cases. 
    
    * [Look around] -> room_1

== room_1 == 
    There's two directions here to go, east or west. It's incredibly dark, with only some local fauna lighting the way. It's less lit to the west.
    {room_1_talk_options: |The person on the phone speaks from your pocket. "Go west here!"}
    * [Go west] -> room_2_east
    * [Go east] -> room_2_west
    + [Speak with the mysterious phone person] -> room_1_talk_options
    
== room_2_east ==
-> END
== room_2_west ==
-> END
== room_1_talk_options ==
* [Stop chatting] -> room_1
    
== cowardice == 
    They were watching, and saw your hesitation. You were killed before you even blinked. Were you looking for treasure or trouble?
    -> END

//i made these ASCII arts to add but i can't figure out how to make them work :(
// https://www.asciiart.eu/ascii-draw-studio/app
/*
 ▄▀▀▀▀▀▀▀▀▀▀▄ 
 ▌  ▄    ▄  ▐ 
▌▌░░░ ▄▄ ░░░▐▐
▌▌  ▄    ▄  ▐▐
 ■   ▀▀▀▀   ■ 
  ▀▀█▒▒▒▒█▀▀  
     ▀▀▀▀     
 ▄▀▀▀▀▀▀▀▀▀▀▄ 
 ▌  ▄    ▄  ▐ 
▌▌░░░ ▄▄ ░░░▐▐
▌▌          ▐▐
 ■   ▀▀▀▀   ■ 
  ▀▀█▒▒▒▒█▀▀  
     ▀▀▀▀     
 ▄▀▀▀▀▀▀▀▀▀▀▄ 
 ▌ ▄▄\  /▄▄ ▐ 
▌▌░░░ ▄▄ ░░░▐▐
▌▌   ▄▄▄▄   ▐▐
 ■  ▀▄▄▄▄▀  ■ 
  ▀▀█▒▒▒▒█▀▀  
     ▀▀▀▀     
 ▄▀▀▀▀▀▀▀▀▀▀▄ 
 ▌   (.) (.)▐ 
▌▌  ░░░ O  ░░▐
▌▌    )___( ▐▐
 ■          ■ 
  ▀▀█▒▒▒▒█▀▀  
     ▀▀▀▀     
 ▄▀▀▀▀▀▀▀▀▀▀▄ 
 ▌  °    °  ▐ 
▌▌░░░    ░░░▐▐
▌▌ ΩΩΩΩΩΩΩΩ ▐▐
 ■ ┴┴┴┴┴┴┴┴ ■ 
  ▀▀█▒▒▒▒█▀▀  
     ▀▀▀▀     
 ▄▀▀▀▀▀▀▀▀▀▀▄ 
 ▌          ▐ 
▌▌          ▐▐ 
▌▌          ▐▐
 ■          ■ 
  ▀▀█▒▒▒▒█▀▀  
     ▀▀▀▀ 
                                           ▌       ▌            
                                          ▌       ▌             
                                         ▌       ▌              
                          ▄▀▀▀▀▀▀▀▀▀▀▄   ▌       ▌              
                          ▌  ⁿ    ⁿ  ▐   ▌       \              
                         ▌▌  O    O  ▐▐   ▌        \            
                         ▌▌  ═    ═  ▐▐    ▌        \           
                          ■  σ-──--  ■      \         \         
                           ▀▀█▒▒▒▒█▀          \         \       
                         ▄▀▀▀░░░░░░▀▀▀▀▄        ▌         \     
                         ▌              ▌        ▌          \   
                        ▌  ▄            ▌          ▌         \  
                       ▌   █         ▌  ▌           ▌         \ 
                      ▌   ▌ ▌        ▌  ▌            ▌         ▐
                     ▌   ▌  ▀▄▄▄▄▄─  ▌  ▌            ▌         ▐
                    ▌   ▌   ▌        ▌  ▌           ■          ▐
                   ▌   ▌   ▌        ▄▀▀ ▌         ▀▀           ▐
  ────────────    ▌   ▌   ▌        ▌   ▌ ▀▀▀▀▀▀▀▀▀            ▐ 
 ▐             │ /   _\   ▌       ▌  ▀▀                      ▐  
  ▐    APPLE    │////  \  ▌     /│  ▐                       ▐   
   ▐             │//      ▌      │││││                  ▄▄▄/    
    ▐             │__      ▌                   ▄▄▄▄▀▀▀▀▀        
  ___▐▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓\      ▄▄▄▄       ▄▄▄▄▄▀▀▀                 
──    ▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀▀         ▀▀▀▀▀▀▀▀                         
*/
// by default, inky does not allow you to return to a choice that has been taken
// * for a choice that cannot be returned torch
// + for a returnable choice