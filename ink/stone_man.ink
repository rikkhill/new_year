
VAR calls_kindred = false

===stone_man


=intro
~ Facts += stone_man_exists
The Stone Man rises up from the ground before you<>
{ intro == 1:
    , his brow furrowed, as if bowed by the weight of great knowledge.
    - else:.
}

-> choice

=choice
+ [Look at the Stone Man{look: again}] You look at the Stone Man
    -> look
* [Look around the area] -> area
+ {Facts ? stone_man_speaks} [Speak to the Stone Man{speak: again}] -> speak

=look
// TODO: Describe the Stone Man

-> conclude

=speak
{speak == 1: Just before you open your mouth, you feel faintly silly talking to a lump of stone.}
"Hello?"
{speak == 2: You feel a little less silly this time around.}

{ slow > 2:
        -> preamble
}
-> silence

=silence
The stone man says nothing<>
{ slow < 2:
    . -> choice
- else:
    , and yet...
}

* no[...], it's surely your imagination
    -> choice
* perhaps[...] you can hear something
    ~ slow++


-> choice

=area
Fragments of the same worn, grey stone are strewn around the clearing. Some look... familiar. There must have been many Stone Men here once.

~ Facts += lots_of_stone_men

* [Wonder how long they've been here]
    ~ slow++
* [Wonder how many of them there once were]
    ~ inc++
* [Wonder why they're no longer here]
    ~ disp++
* [Wonder where they've gone]
    ~ lost++

- -> choice
-> choice

-> conclude

=preamble
With a rumble, the Stone Man begins to speak. His voice is <>
~describe_stone_man_voice()

"WHEEEEEREOF, <>
{   slow < 5:
        FAAAAAST <>
    - else:
        ~ calls_kindred = true
        KINDRED <>
} CREATURE?"

-> conversation

=conversation

- (stone_man_question)
* {what < 2} "What?"
    "CREEEEATURE." The words are {describe_stone_man_voice()}. "WHEREOF".
    - - (what)
    * * "Oh, I see."
        { what < 2:
            ~ slow++
        }
    * * {what == 1} ["What?"]
        A gravelly sigh fills the part of your mind the Stone Man is speaking to. "WHEEEEREOF", the Stone Man says, the word tumbling through your mind like {describe_stone_man_voice()}. 
        -> what
    * * {what == 2} ["WHAT?"]
         "CREEEEEEATUUUUUURE." "You get the impression he's talking even more slowly than usual for your benefit. "WHEEEEEREOF."
        -> what
* {silence} "How come you're talking now?"
* {calls_kindred} "Why do you call me Kindred?"
    ~ Facts += stone_man_fast_concept
    The corners of the Stone Man's mouth stay fixed in place, and yet you feel as if he's smiling at you. {silence: "FAAAAAST ONCE, LIKE OTHERS, BUT FAST FAAAAAST."|"OOOTHERS FAST, BUT KINDRED NOT FAAAAST, OR FAAAAST BUT FAAAAAST FAAAAAAST."}
    * * "Others?"
        "OOOTHERS," the Stone Man replies.
        * * * "Other Stone Men?"
            "NNNOOO OTHER STONE MEN". His words are {describe_stone_man_voice()}
            * * * * "Do you mean there are no other Stone Men, or do you mean something other than Stone Men?"
            "YYYYES"
            * * * * [Remain silent]
            - - - - You remain respectfully silent.
        * * * "Other... humans?"
            "OOOTHERS," the Stone Man replies.
    * * "Fast?"
        Whatever gesture the Stone Man makes, and however he makes it, it can't possibly be a nod.
        "FAAAAST."
* {area} "What happened to the other Stone Men?"
    The Stone Man pauses for so long, you think he's gone silent. Then, a reply.
    
    "NNNNOT FAAAAAAST."
+ (story) "Can you tell me a{story > 1:nother} story?"
    -> stone_man_story ->
-
+ [Ask the Stone Man something else] -> stone_man_question
+ "Goodbye, Stone Man".
    "IS NO WAIT, CREATURE. SEEING NOW"
    -> conclude

===function describe_stone_man_voice()

{&a million tiny pebbles cascading down a mountainside|the grind of two millwheels pitted against one another|sand between the sole of your shoe and a pier-side paving slab|the low ceiling of a mausoleum, pushing down on you|the rumble of a chalk cliffside, crumbling away|the inevitability of the wind, rushing across a wide mesa|the desert, as it swallows the opulence of a bygone civilisation|two vast and drunkless legs of stone|a monolith, stood starkly against the cold skies of eternity|a mountain, ground down by the smooth surface of eternity|a slab of granite, falling to the hard earth|the rumble of fault lines, as the surface of the earth makes war with itself}



===stone_man_story
The Stone Man tells you a story.

It's slow and rambly.
~ slow++
->->

// TODO: Write stories


