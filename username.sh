#!/bin/bash
#username.sh
#laura beatty
#ceng 298

INPUT_FILE=${1:-username-input}

echo "Username rules:"
echo "1. Only lowercase letters, digits, and underscore characters(_)."
echo "2. Must begin with a lowercase letter."
echo "3. Must be between 3 and 12 characters long"

if [[ ! -f "$INPUT_FILE" ]]; then
  echo "Error: file '$INPUT_FILE' not found."
  exit 1
fi

while read -r username; do
	username="${username//$'\r'/}"
	[[ -z "$username" ]] && continue

	if [[ "$username" =~ ^[a-z][a-z0-9_]{2,11}$ ]]; then
		echo "Thank you! Your username $username is valid."
		break
	else
		echo "Invalid username: $username."
	fi
done

