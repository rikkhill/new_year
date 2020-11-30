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
-> odd_choice

=random_odd_book
-> odd_choice