// The books in the library


===shelf_of_oddities

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

+ Book of the Unknowing -> book_of_the_unknowing

-> odd_choice


=random_odd_book
-> odd_choice



===book_of_the_unknowing
BOOK OF THE UNKNOWING.

Its smoky-grey binding has a velvety texture, which your fingers sink into a little.

- (picked_up_boto)
+ [Read the author's name{picked_up_boto > 1: again}]
    Your eyes skim{picked_up_boto > 1: { again| once more}} over the name beneath the book's title -> picked_up_boto
+ [Open the book] ->
+ [Put the book back]
    You put the book back where you found it -> shelf_of_oddities.odd_choice
-
The pages of the book
-> shelf_of_oddities.odd_choice


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

{ RANDOM(1, 3) < 3:
    {~Dealing with|Meditations on|Imaginary|Dangerous|Harmless|Invisible|The Truth About|Clever|Psychic|Violent|Sleeping With|Crystal|Unknown|Really Big|Ancient|Dharmic|Mysterious|Cold|Hot|Sexy|Really Sexy|Incredibly Sexy|Magic|Angelic|Demonic|Spirit|Advanced|Beginners|Intermediate|Dead|Living|Animated|Everything You Ever Wanted To Know About|Impossible|Paradoxical} <>
} <>
{topic}<>
{ RANDOM(1,3) < 3:
    {~ on Toast| in Space| and Other Problems|: The Real Deal|: Why We Can't Just Leave Them Like That| in the Spirit Realm|: An Introduction|: An Advanced Treatment| and What to Do About Them|: My Year Among Them}
}



