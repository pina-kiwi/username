# README for Username Validation Script

## Author Information
- **Name:** [laura beatty]
- **Course:** [CENG 298-01]
- **Assignment:** Username Validation
- **Date:** [01/20/26]

## Program Description
[Write 2-3 sentences in your own words describing what this script does and its purpose. Explain the problem it solves and how it works at a high level.]

This scipt takes in user inputs or a file with potential usernames and checks them for general username rules (The only characters that can be used are lower case letters, digits, and the underscore character, must start with a lower case letter, must contain at least three but no more than 12 characters). This makes sure that the username inputed can be used to make a git account.

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
[Explain in 3-5 sentences how your script validates usernames. Include information about:]
- The use of the `while` loop
- The `grep` command with extended regular expressions
- The meaning of the `-E` and `-v` flags
- The redirect `> /dev/null 2>&1`
The script uses a while loop to prompt the user to input a username so long as the input given does not meet the requirements.
Inside the loop, grep checks the username against the validation pattern. The -E flag allows the use of extended regular expressions, whiel the -v flag causes the invalid usernames to allow the loop to continue. The redirect '> /dev/null 2>&1' is not needed in this code but makes sure that grep knows that we only care about the exit code to determine if the username is valid or not.  


## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
[Describe your testing process and results. Include:]
- Example valid usernames you tested (at least two)
- Example invalid usernames and why they fail (at least two)
- How you used the username-input file to test
I tested 'hello' and 'piwi'. 
Invalid usernames I tested were '123' (starts with number) and 'SNAKE' (contains capital letters)
Using the username-input file was pretty straight forward, I did the typical ./usernames.sh but included "< username-input" at the end to show that was the file I wanted read.


## Challenges and Solutions
[Optional: Describe any challenges you encountered while creating this script and how you solved them. This could include debugging issues, understanding regular expressions, or Git workflow problems.]

## Resources
[List any resources you used (class slides, ChatGPT, etc.). Please refer to the course syllabus for more details on citations.]
Used class slides about shell scipts.
ChatGPT used for debugging git
    Prompt: remote: Invalid username or token. Password authentication is not supported for Git operations. fatal: Authentication failed for 'https://github.com/pina-kiwi/username.git/'
    Prompt: piwi@sponge:/mnt/c/Users/lsbea/planet pesto/username$ git push Username for 'https://github.com': pina-kiwi Password for 'https://pina-kiwi@github.com': remote: Permission to pina-kiwi/username.git denied to pina-kiwi. fatal: unable to access 'https://github.com/pina-kiwi/username.git/': The requested URL returned error: 403

## License
This project is part of course work for Chapman University and is intended for educational purposes.
