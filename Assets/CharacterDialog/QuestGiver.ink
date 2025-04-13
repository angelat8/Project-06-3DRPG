Hello Adventurer! Would you like to explore my market?
-> market

== market ==
+ [I want to look at the Food] { - market_food: 
			-> market_food_buy
		- else:
			-> market_food
	}
 + [I want to look at the Books] { - market_books: 
			-> market_books_buy
		- else:
			-> market_books
	}
-> END

== market_food ==
I have bread, cheese, and meat! 
+ [May I take a closer look at the bread.] -> market_food_buy
+ [Go Back to the market] -> market
-> END

== market_food_buy ==
Would you like to buy some?
+ [I will purchase a loaf of bread] -> food_buy
+ [Go Back to the market] -> market
-> END

=== food_buy ===

Thanks for buying my bread! You will love it!
-> END

== market_books ==
I have many books! They are in very good condition!
+ [May I take a closer look.] -> market_books_buy
+ [Go Back to the market] -> market
-> END

== market_books_buy ==
Sure, I have books on medicine, fiction, dragons, and more.
+ [I will purchase the book about dragons.] -> books_buy
+ [Go Back to the market] -> market
-> END

=== books_buy ===
Fantastic choice!
-> END

