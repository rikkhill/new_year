

===stopped_clock
# BACKGROUND: ./background_images/clock.jpg
# TITLE: THE STOPPED CLOCK

-> intro

=intro
~ Facts += stopped_clock_exists
This handsome Grandfather Clock stands proudly against the wall, Its pendulum <>
hanging down, unmoving.

-> choice

=choice

- (observe_clock)
* [Listen to the ticking of the clock]
    There is no tick. It's stopped.
    * * [REALLY listen to the ticking of the clock]
        No, seriously, it's stopped. There's no ticking.
        ~ slow++
    * * * [Oh. Okay.]-> observe_clock
    * * [Oh.] -> observe_clock
+ [Contemplate the stopped clock{contemplate > 0: some more}] -> contemplate
+ [Stop looking at the clock] You stop looking at the clock
    -> conclude

-> conclude

=contemplate

-> observe_clock

