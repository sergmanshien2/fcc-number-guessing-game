#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read  USERNAME

CUR_USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME'")
GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")
BEST_GAME=$($PSQL "SELECT MIN(guesses) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")

if [[ -z $CUR_USER ]]
  then
    INSERT_USER=$($PSQL "INSERT INTO users (username) VALUES('$USERNAME')")
    echo "Welcome, $USERNAME! It looks like this is your first time here."
  else
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi 

RAN_NUM=$(( 1 + $RANDOM % 1000 ))
GUESS=1
echo "Guess the secret number between 1 and 1000:"

while read NUM
  do
    if [[ ! $NUM =~ [0-9]+$ ]]
      then
      echo "That is not an integer, guess again:"
      else
        if [[ $NUM -eq $RAN_NUM ]]
          then
          break;
          else
            if [[ $NUM -gt $RAN_NUM ]]
              then
              echo "It's lower than that, guess again:"
              elif [[ $NUM -lt $RAN_NUM ]]
                then
                echo "It's higher than that, guess again:"
            fi
        fi
    fi
    GUESS=$(( $GUESS + 1 ))
done
  
  if [[ $GUESS == 1 ]]
    then
    echo "You guessed it in $GUESS tries. The secret number was $RAN_NUM. Nice job!"
    else
    echo "You guessed it in $GUESS tries. The secret number was $RAN_NUM. Nice job!"
  fi

  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
  INSERT_GAME=$($PSQL "INSERT INTO games(user_id, guesses) VALUES( $USER_ID, $GUESS)")
  GAMES_PLAYED_FINAL=$($PSQL "SELECT COUNT(*) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")
  BEST_GAME_FINAL=$($PSQL "SELECT MIN(guesses) FROM users INNER JOIN games USING(user_id) WHERE username='$USERNAME'")
  UPDATE_USER_DATA=$($PSQL "UPDATE users SET games_played = $GAMES_PLAYED_FINAL, best_game = $BEST_GAME_FINAL WHERE username = '$USERNAME'")
