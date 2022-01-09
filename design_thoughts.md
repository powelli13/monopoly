# Assumptions
The core game logic will need to be accessible from a variety of consumers. This could include real time players in a web app via a websocket, slower correspondence games that make HTTP requests, or a native mobile app. All these platforms would ideally be able to play together. So the core game models are defined independent of input type or storage used.

Players will have accounts and could be playing a live game, or checking on moves between multiple correspondence games.

# Models and Choices
## Player
The Player model holds the board position, account balance and piece identifier for a given player participating in the game

## Property
The identifies a purchasable hotel location on the board. It contains information about the purchase price, upgrade costs, rental prices at various upgrade tiers and foreclosure value.

## Ownership
The ownership is used to signify a Player owning a certain Property. The ownership will maintain if the player has upgraded the property, foreclosed the property.

## Invoice
An invoice is created whenever money transfers between players. If a player lands on another players hotel property and they pay them money, an invoice is created to track this. Using an invoice, rather than simply updating both account balance values, will allow the history of rental transactions at a property to be displayed. It also allows for alterations of the ruleset in the future to be made. For example an Invoice could be marked as outstanding and therefore allow for a player to use an *I Owe You* to another player and take on debt. 

An invoice can also be used to represent players paying income tax if they land on that square.

## Card
Cards represent the event cards that are drawn from the decks in the middle of the board. This saves the description and actions to be taken for a given drawn card.
