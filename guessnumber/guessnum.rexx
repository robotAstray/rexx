/* REXX */
say "I'm thinking of a number between 1 and 10."
secret = RANDOM(1,10)
tries = 1

do while (guess \= secret)
    say "What is your guess?"
    pull guess
    if (guess \= secret & guess < 0) then
    do
        say "That's not it. Enter a number greater than 0. Try again"
        tries = tries + 1
    end
    if (guess \= secret & guess > 10) then
    do
        say "That's not it. Enter a number smaller than 10. Try again"
        tries = tries + 1
    end
    if (guess \= secret & DATATYPE(secret)==FLOAT) then
    do
        say "That's not it. Enter an integer between 1 and 10. Try again"
        tries = tries + 1
    end
end
say "You got it! And it only took you" tries "tries!"
exit
