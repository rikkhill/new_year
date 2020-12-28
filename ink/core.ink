INCLUDE winds.ink
INCLUDE test_scenes.ink
INCLUDE library.ink
INCLUDE stone_man.ink
INCLUDE knowledge.ink
INCLUDE clock.ink


~ slow = 10
~ slow++
~ slow++
~ Facts += (stone_man_speaks)


-> scene_selector


===scene_selector===
# AWAIT

+ [END SESSION] -> end_session // always option 0
+ [SCENE ONE] -> scene_one
+ [SCENE TWO] -> scene_two
+ [BOOKSHELF OF ODDITIES] -> shelf_of_oddities      // 3
+ [STONE MAN] -> stone_man                          // 4
+ [STOPPED CLOCK] -> stopped_clock                  // 5

=end_session
# ENDSESSION
<<<<< SCENE ENDS >>>>>
-> END

===conclude===
-> scene_selector