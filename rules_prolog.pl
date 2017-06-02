/*Facts and Rules in Prolog*/

/*Here I define some Facts of individuals that like each other: */
likes(joan, chachi).
likes(joan, potsy).
likes(chachi, joan).
likes(kim_kardasian, kanye_west).
likes(kanye_west, kanye_west).

/*Here is an example of Rule to check whether two people are love_compatable*/
love_compatable(X, Y) :- 
likes(Y, X), 
likes(X, Y).

/*-----------------------------------------------------------------------------*/

/*Here I provide some Facts to show who is the parent of whom: */
parent(sue,ted).
parent(ted, mike).

/*Here I define a Rule that checks if X is the grandparent of Y: */
grandparent(X,Y) :- 
parent(X, Z), 
parent(Z,Y).

/*-----------------------------------------------------------------------------*/

/*More Examples of defining some Facts: */
weather(phoenix, hot, summer).
weather(la, warm, summer).

/*Another Example of defining a Rule: */
warmer_than(C1, C2) :- 

	weather(C1, hot, summer),
	weather(C2, warm, summer),
	write(C1), write(' is warmer than '), write(C2), nl.




