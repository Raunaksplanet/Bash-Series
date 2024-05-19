#!/bin/bash

/bin/echo -n "Enter input: "
read input

# Input validation
if ! validAlphaNum "$input"; then
    echo "Please enter only letters and numbers." >&2
    exit 1
else
    echo "Input is valid."
fi


validAlphaNum()
{
    # Remove all unacceptable characters.
    validchars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"
    
    # Check if the cleaned input matches the original input
    if [ "$validchars" = "$1" ]; then
        return 0  # Input is valid
    else
        return 1  # Input is invalid
    fi
}

<< 'Comment'
sed: Invokes the stream editor command.

-e: Specifies a script to be executed.

's/[^[:alnum:]]//g': This is the script being executed by sed.

s: Indicates that it's a substitution operation.

[^[:alnum:]]: This is a regular expression pattern that matches any character that is not alphanumeric. 

[^[:alnum:]] matches any character that is not in the range of letters (both uppercase and lowercase) or numbers.
//: It's the replacement part of the substitution operation, 
and it's empty here, effectively removing the matched non-alphanumeric characters.

g: This flag stands for "global" and makes sure that all matches in each line are substituted, not just the first one.

Comment

exit 0
