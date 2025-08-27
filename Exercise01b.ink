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
-> cave_mouth

== cave_mouth == 
You are at the entrance to a cave...{not torch_pickup: There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] -> east_tunnel
+ [Take the west tunnel] -> west_tunnel
* [Pick up torch] -> torch_pickup

== torch_pickup ==
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see a thing. 
* {torch_pickup} [Light your torch] -> east_tunnel_lit
+ [Return to the entrance] -> cave_mouth 

== east_tunnel_lit ==
The light of your torch glints off of the thousands of coins in the room.
-> END

== west_tunnel ==
You are in the west
-> END

// by default, inky does not allow you to return to a choice that has been taken
// * for a choice that cannot be returned torch
// + for a returnable choice