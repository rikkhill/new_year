

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
You contemplate the clock.

{~->measuring_time|->facetime}

-> observe_clock

=measuring_time
A clock is a device for measuring time, and this clock seems to have stopped. <>
Does that mean time has stopped?
+ [Yes, time has stopped]
    ~ lost++
    Don't be silly, time hasn't stopped.
+ [No...]No.
    + + Perhaps the clock is just broken.
        ~ disp++
    + + Perhaps this clock is just measuring a different time.
        ~ slow++
    
--> observe_clock

=facetime
Its hands are stuck at 9.47, but it's impossible to tell whether <>
that's 9.47am or 9.47pm.

* [Is it?]
    It's IMPOSSIBLE to tell whether it's 9.47am or 9.47pm
    * * [I suppose so.]
    * * [But is it REALLY?]
        Well, smartarse, how do you propose to tell the difference?
        * * * [Oh, I suppose...]
        * * * [Maybe it has some characteristic we don't know how to measure]
            ~ disp++
            Oh, I give up...
        * * * [Maybe there isn't any real difference between AM and PM]
            ~ lost++
            Oh, I give up...



- -> observe_clock