#!/usr/bin/python
#Author: Tyler Vivian
#Creation Date: 24/2/22
#Last Modified: 25/2/22
#Description: Breaks passwords using brute force

import hashlib
import random

#hidden password hash(Password is 'do')
x = input('How long is the password?')
x = int(x)

passwordHash = "ac0b52a2ae6ef99999bc08fb31e19188bf0085a4614204068e677e140e1458be"
wordlistHash=''
 
#setting up the list of characters in a string
your_list = '0123456789abcdefghijklmnopqrstuvwxyz'

#converts the string into the list
character_list = list(your_list)

guess_password=''

# loop to guess 
#while the password guessing doesnt match the hash
trylist = []
count = 0
powerof = 36**x
while (passwordHash != wordlistHash and count<powerof):
    
    #setting the guess password variable, uses only 4 letters
    guess_password=random.choices(character_list,k=x)

    trying = ''
    trying = trying.join(guess_password)

    #prints the 4 letters of guessing
    print(">>>>>"+trying+"<<<<<")

    
    if trying in trylist:
        count = count
    else:
        trylist.append(trying)
        count = count + 1
    
    
    #print(trylist)
    #print(trying)

    print(count)
    wordlistHash = hashlib.sha256(trying.encode("utf-8")).hexdigest()
    
    if (passwordHash == wordlistHash):
        print("your password is:",trying)
        break
    elif(count==powerof):
        print("All combinations have been tried.\nPlease try a new length or continue with this one")
        break

#REFERENCE/ACKNOWLEDGEMENT
#Code direction provided by Rajesh Soni
