#!/bin/bash

# Check if the correct number of arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <website_url> <email_address> <email_subject>"
    exit 1
fi

# Assign arguments to variables
WEBSITE_URL=$1
EMAIL_ADDRESS=$2
EMAIL_SUBJECT=$3

# Fetch website content
WEBSITE_CONTENT=$(curl -s "$WEBSITE_URL")

# Check if curl succeeded
if [ $? -ne 0 ]; then
    echo "Failed to fetch website content."
    exit 1
fi

# Create a temporary file to hold the email content
TEMP_FILE=$(mktemp /tmp/email.XXXXXX)

# Write the email headers and content to the temporary file
echo "To: $EMAIL_ADDRESS" > $TEMP_FILE
echo "Subject: $EMAIL_SUBJECT" >> $TEMP_FILE
echo "" >> $TEMP_FILE
echo "$WEBSITE_CONTENT" >> $TEMP_FILE

# Send the email using sendmail
sendmail -t < $TEMP_FILE

# Check if sendmail succeeded
if [ $? -ne 0 ]; then
    echo "Failed to send email."
    exit 1
fi

# Clean up the temporary file
# rm $TEMP_FILE

echo "Email sent successfully to $EMAIL_ADDRESS with subject: $EMAIL_SUBJECT"