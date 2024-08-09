#!/usr/bin/python3
import hashlib
import itertools
import string

# hidden password hash
passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"

# character set
characters = string.ascii_lowercase + string.digits

# maximum length of the password to brute force
max_length = 15

# brute force attack
for length in range(1, max_length + 1):
    for guess in itertools.product(characters, repeat=length):
        # join into string
        word = ''.join(guess)

        # hash the word using SHA-256
        wordlistHash = hashlib.sha256(word.encode("utf-8")).hexdigest()

        # print word and its hash
        print(f"Trying password {word}:{wordlistHash}")

        # check hash matches the hidden password hash
        if wordlistHash == passwordHash:
            print(f"Password has been cracked! It was '{word}'")
            break
    else:
        continue  
    break  
else:
    print("Password not found in the given range.")

