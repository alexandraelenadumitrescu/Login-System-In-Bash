Login System in Bash
This project is a simple command-line login system written in Bash. It allows users to log in using their email and password, validating their credentials against a CSV file. Additionally, the system ensures that users cannot log in multiple times concurrently.

Features
Email Validation: The system checks if the email format is valid using a regular expression.
CSV Credential Storage: User credentials (email and password) are stored in a fisier.csv file.
Duplicate Login Prevention: Once logged in, a user cannot log in again until they log out.
Interactive Prompts: Users are guided through the login process with clear messages and options to retry or cancel.
Simple Password Check: The script checks the email-password combination against the CSV file for authentication.
