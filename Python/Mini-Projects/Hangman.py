#Step 1 

from hangman_words import word_list
from hangman_art import stages 
from hangman_art import logo

#Generate Random Word
import random 
chosen_word=random.choice(word_list)
print(logo)


#Created an Empty List where blanks could be shown for each each missing letter of the word
display=[]
while len(display)<len(chosen_word):
  display+= '_'
guessed_letter=[]

#Creating Limited no. of chances for the user and a booleon
lives = 6
answer = "".join(display)
end_game =False

#Create a loop where each correct letter guess replaces the blanks.
print(stages[6])
while end_game==False :
  guess=input("\nEnter your guess:- ").lower()
  if guess in guessed_letter:
    print("You already typed this letter")
  for position in range(len(chosen_word)):
    letter=chosen_word[position]
    if letter==guess:
      display[position]= letter
      guessed_letter.append(guess)
  
#Created a Loop for when an incorrect letter was input. Also ensured that the player does not lose a point if the incorrect letter was input twice  
  if guess not in chosen_word:
    lives-=1
    if guess in guessed_letter:
      lives+=1
    guessed_letter.append(guess)
    if lives==0:
      print(f"The word was {chosen_word}.")
      print("Game Over, You Lose")
      end_game = True 
    if lives>=1 and "".join(display)==chosen_word:
      print(f"The word was {chosen_word}.")
      print("Congrats on guessing the word")
      end_game = True
    
  
  print(stages[lives])
  print(display)
