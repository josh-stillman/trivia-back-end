# Trivia.tv README
Two-player timed trivia game with numerous categories. Written in React utilizing a heavy dose of lifecycle methods and async calls.

## New Game
On the new game page, the two players can select from any of the existing players, or create new player profiles (complete with pictures).  Please bear with Heroku's slowness as the profiles are fetched from the back end.  Check out Mac and Dennis for two good sample players.

### Game Play
A game consists of three rounds of questions, each in a different, randomly selected category.  Player 1 buzzes in with the left shift button, player 2 uses the right shift button.  After a player buzzes in, they have 10 seconds to select an answer.  If that player gets it wrong, the other player gets a chance to answer the question.  At the end of the three rounds, the best trivia player will be crowned the champion!

### Technical Features
+ Used React to create a single-page web application front-end.
+ Made extensive use of Ajax/Fetch to pull trivia questions from an external API and push user scores to the Rails API backend during game play.

Check out the demo hosted on Github Pages: https://bmcilhenny.github.io/trivia-front-end/

## Contributor's Guide
Please submit any bugs you find or any feature suggestions through the repo.
