# Assumptions and Questions
The core game logic will need to be accessible from a variety of consumers. This could include real time players in a web app via a websocket, slower correspondence games that make HTTP requests, or a native mobile app. All these platforms would ideally be able to play together. So the core game models are defined independent of input type or storage used.

Correspondence mode may be difficult because players need to 'call out' when someone has landed on their properties, otherwise the cannot get rent.

Players will have accounts and could be playing a live game, or checking on moves between multiple correspondence games.

When players are playing the responsibility of the Banker is not a desired role and so it is handled by the game engine.

Should players be able to chat?

Can players give each other money for no reason, cooperate? What are the limits to in between dice roll actions?

Do you prevent a player from rolling the dice and moving if other players are considering sales of deeds between each other?
  - Lots of player/player and player/banker interactions could potentially happen between dice rolls according to rules.

  - Maybe allow for offers and player exchanges/sales to occur. However if a player has the dice while another player is considering an offer, then they will be prompted to roll voiding the pending transaction.

Are all sale offers and exchanges open knowledge to all players? Or can there be private sales?

# Models and Choices
## Player
The Player model holds the board position, account balance and piece identifier for a given player participating in the game. Also used to 

## Deed
The identifies a purchasable hotel location on the board. It contains information about the purchase price, upgrade costs, rental prices at various upgrade tiers and mortgage value. A Deed also indicates the current owner. The Deed will maintain if the player has upgraded the property, foreclosed the property.

## Invoice
An invoice is created whenever money transfers between players. If a player lands on another players hotel property and they pay them money, an invoice is created to track this. Using an invoice, rather than simply updating both account balance values, will allow the history of rental transactions at a property to be displayed.

An invoice can also be used to represent players paying taxes if they land on that square.

## Offer
An offer is created when one player asks another player to buy or sell a deed. Offers can be made by players in between dice roles.

## Banker
The banker is used to determine the finite number of upgrade tokens, house and hotel tokens, that are available for purchase in the inventory.

## Card
Cards represent the event cards that are drawn from the chance or chest decks in the middle of the board. This saves the description and actions to be taken for a given drawn card.

## Event
Events are used to record sales, or actions that are taken on players turns. They are used to display a history of what has happened in the game.

## Space 
Represents a space on the board. The spaces can have actions such as offering a property to a player for purchase, charging a player rent if they land on a property owned by someone else, allowing a player to draw from a deck, going to jail etc.

## Board
The board acts as the collection of spaces and the card decks. It is used to determine the sequential order of spaces as players move around the board.

## Game
Used to represent the total internal structure of a game of Monopoly. Acts as the coordinator between various structs and constituent pieces of the game.

# Gameplay Events
Events that occurr while the game progresses which change the state of the game. A player can make one of two main categories of actions; first they can roll the dice and move their character (or not if they are in jail) this consistutes their turn, second they can offer deed sales or purchases to other players, buy houses for properties etc. these actions take place in between turns during the quasi real time segment of play.
Movement
- A player rolls the dice and moves their pawn
  - A player passes GO while moving and collects $200
  - A player is in jail and must roll doubles or pay to escape
- A player lands on a space and draws a card from the deck
- A player lands on an owned, non-mortgaged property and pays the rent rate
- A player lands on an unowned property and decides to purchase it or not
- A player rolls dice to escape jail
- A player pays money to leave jail

Deed Transactions
- A player purchases a deed they landed on
- A player purchases house or hotels for one of their properties, if they own the entire set
- A player purchases a deed from another player for an agreed price

Property Auctions
- A property is up for auction
- Players make bids on a property in an auction

#TODO
- Need a good way to model if properties are streets together, same with railroads and utilites
- Need a Behaviour for properties that can charge
- Need some more database service classes
