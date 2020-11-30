INCLUDE winds.ink
INCLUDE test_scenes.ink
INCLUDE library.ink



-> scene_selector


===scene_selector===
# AWAIT

+ [END SESSION] -> end_session // always option 0
+ [SCENE ONE] -> scene_one
+ [SCENE TWO] -> scene_two
+ [BOOKSHELF OF ODDITIES] -> shelf_of_oddities

=end_session
# ENDSESSION
<<<<< SCENE ENDS >>>>>
-> END

===conclude===
-> scene_selector