// This holds all the logic for the "winds" mechanic

VAR lost = 0
VAR disp = 0
VAR slow = 0
VAR inc = 0


=== function boost_lost(val)
    ~ lost = lost + val
    
=== function boost_disp(val)
    ~ disp = disp + val

=== function boost_slow(val)
    ~ slow = slow + val
    
=== function boost_inc(val)
    ~ inc = inc + val

// Display winds for debugging purposes
===show_winds===
LOST: {lost}
DISPOSSESSED: {disp}
SLOW: {slow}
INCOMPLETE: {inc}
->->

=== function highest_winds()

LIST winds = (l), (d), (s), (i)

{
    - lost < disp || lost < slow || lost < inc:
        ~ winds -= l
}

{
    - disp < lost || disp < slow || disp < inc:
        ~ winds -= d
}

{
    - slow < lost || slow < disp || slow < inc:
        ~ winds -= s
}

{
    - inc < lost || inc < slow || inc < disp:
        ~ winds -= i
}

~ return winds

