# Assumptions
The core game logic will need to be accessible from a variety of consumers. This could include real time players in a web app via a websocket, slower correspondence games that make HTTP requests, or a native mobile app. All these platforms would ideally be able to play together. So the core game models are defined independent of input type or storage used.

Correspondence mode may be difficult because players need to 'call out' when someone has landed on their properties, otherwise the cannot get rent.

Players will have accounts and could be playing a live game, or checking on moves between multiple correspondence games.

When players are playing the responsibility of the Banker is not a desired role and so it is handled by the game engine.

# Models and Choices
## Player
The Player model holds the board position, account balance and piece identifier for a given player participating in the game

## Deed
The identifies a purchasable hotel location on the board. It contains information about the purchase price, upgrade costs, rental prices at various upgrade tiers and mortgage value.

## Deed
A Deed is used to signify a Player owning a certain Property. The ownership will maintain if the player has upgraded the property, foreclosed the property.

## Invoice
An invoice is created whenever money transfers between players. If a player lands on another players hotel property and they pay them money, an invoice is created to track this. Using an invoice, rather than simply updating both account balance values, will allow the history of rental transactions at a property to be displayed. It also allows for alterations of the ruleset in the future to be made. For example an Invoice could be marked as outstanding and therefore allow for a player to use an *I Owe You* to another player and take on debt. 

An invoice can also be used to represent players paying income tax if they land on that square.

## Banker
The banker is used to determine the finite number of upgrade tokens, house and hotel tokens, that are available for purchase in the inventory.

## Card
Cards represent the event cards that are drawn from the chance or chest decks in the middle of the board. This saves the description and actions to be taken for a given drawn card.

## Event
Events are used to record sales, or actions that are taken on players turns. They are used to display a history of what has happened in the game.

## Space 
Represents a space on the board. The spaces can have actions such as offering a property to a player for purchase, charging a player rent if they land on a property, allowing a player to draw from the deck, going to jail etc.

## Board
The board acts as the collection of spaces and the card decks. It is used to determine the sequential order of spaces as players move around the board.

## Game
Used to represent the total internal structure of a game of Monopoly. Acts as the coordinator between various structs and constituent pieces of the game.
