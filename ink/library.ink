// The books in the library


===shelf_of_oddities
# BACKGROUND: ./background_images/bookshelf.jpg
# TITLE: THE BOOKSHELF OF ODDITIES

-> intro

=intro
"ODDITIES" {(intro == 1): reads the sign above the bookshelf}
-> odd_choice


=odd_choice
+ [Browse the shelves for a specific topic] You browse the shelves for a specific topic -> odd_topics
+ [Pick a random book] You pick a random book from the shelves -> random_odd_book

+ [Leave the bookshelf] You leave the bookshelf
    -> conclude
- -> conclude

=odd_topics

+ [Book of the Unknowing] -> book_of_the_unknowing

-> odd_choice


=random_odd_book

"{random_book()}"

-> odd_choice



===book_of_the_unknowing
BOOK OF THE UNKNOWING.

Its smoky-grey binding has a velvety texture, which your fingers sink into a little.

- (picked_up_boto)
+ [Read the author's name{picked_up_boto > 1: again}]
    ~ disp++
    Your eyes skim{picked_up_boto > 1: { again| once more}} over the name beneath the book's title -> picked_up_boto
+ [Open the book] -> open_boto
+ [Put the book back]
    You put the book back where you found it -> shelf_of_oddities.odd_choice
- -> picked_up_boto

=open_boto
- (opened_boto)
* [Read the preface]
    ~ disp++
    Your eyes float over the words of the preface for a page <>
and a half. They stop, for some reason, and you are left with the feeling <>
you know even less about this book than you did before.
    -> opened_boto
* (read_boto) [Read a page of the book]
    ~ disp++
    You read a page of the book. Your eyes take in the words - you can feel <>
    the texture of them, the rhythm of language - but by the end of the page <>
    you couldn't say what you just read for all the money in the world.
    -> opened_boto
+ {read_boto} [Read another page]
    {->boto_1|->boto_2|->boto_3}
    ~ disp++
    
    -> opened_boto
+ [Close the book] You close the book. -> picked_up_boto
-> shelf_of_oddities.odd_choice

=boto_1
You read another page. Again, the words beat against your mind before flitting <>
away into the darkness. As they vanish, you are struck with the most <>
peculiar feeling of loss...
-> opened_boto

=boto_2
You read another page. Something that used to be in your mind is no longer <>
there. What was it? A childhood wish? A story you read on a bleak midwinter day? The name of someone you once loved?
-> opened_boto

=boto_3
You read yet another page, and another morsel of memory flits away from your <>
mind. {&You feel lighter for the experience.|You feel divested of a great weight.}
-> opened_boto

=== function random_book()
{book_title()}, by {book_author()}

=== function book_author()
{~Mortimer|Adele|Thackerey|Wickedly|Jonathan|Edgar|Bernice|Candice|Stripperly|Psychic|Doreen|Lesley|Bumbly|Cantanker|Billy-Bob-Sue|Clover|Dastardly|Philip|Ronaldo|Nicholas|Maureen|Hillary|Jessop|D. |A. |F. |R. |M. |Cleveland|Ben|Benjamin|Barry|Peggy} <>
{ RANDOM(1, 3) == 1:
    {~A|B|C|D|E|F|G|H|I|J|K|L|M|N|O|P|Q|R|S|T|U|V|W|X|Y|Z}. <>
} 
{~Spinks|Snodgrass|Spinoza|Artichoke|Soupiest|Thackerey|Mountjoy|Edgebaston|Whipplesnade|Jones|Caesar|Robinson|Gumley|McRickshaw|Clover|Dick|Phillips|Hildebrand|Doncester|Ronaldo|Cleveland|Crisp|Burnside|Spacewhacker|Hopper|Doozer|Parrot|Whitstable|Bonk|Smith|Francisco}


=== function book_title()

VAR topic = ""

~ topic = "{~Vampires|Cats|Donkeys|Things|Trees|Yeti|Ennui|Souls|Mind Control|Dreams|Tarot|Crystals|Ancient Civilisations|Gods|Demons|Angels|Rabbits|Tigers|Reincarnation|Werewolves|Diseases|Magic|Spirits|Meditation|Kung Fu|Corpses|Impossibilities|Paradoxes}"

{RANDOM(1, 3) < 3:
    {~Dealing with|Meditations on|Imaginary|Dangerous|Harmless|Invisible|The Truth About|Clever|Psychic|Violent|Sleeping With|Crystal|Unknown|Really Big|Ancient|Dharmic|Mysterious|Cold|Hot|Sexy|Really Sexy|Incredibly Sexy|Magic|Angelic|Demonic|Spirit|Advanced|Beginners|Intermediate|Dead|Living|Animated|Everything You Ever Wanted To Know About|Impossible|Paradoxical} <>
}<>
{topic}<>
{RANDOM(1,3) < 3:
    {~ on Toast| in Space| and Other Problems|: The Real Deal|: Why We Can't Just Leave Them Like That| in the Spirit Realm|: An Introduction|: An Advanced Treatment| and What to Do About Them|: My Year Among Them}
}



