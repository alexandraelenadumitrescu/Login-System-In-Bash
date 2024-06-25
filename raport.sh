#!/bin/bash

USERS_FILE="fisier.csv"

generate_user_report() {
    email="$1"
    file_count=$(find "/userspace/$email" -type f | wc -l)

    dir_count=$(find "/userspace/$email" -type d | wc -l)

    disk_usage=$(du -sh "/userspace/$email")

    report_content="### User Report: $email\n\nFile Count: $file_count\nDirectory Count: $dir_count\nDisk Usage: $disk_usage\n\n### Generated on: $(date +"%d-%m-%Y %H:%M:%S")\n"
    report_filename="$username-report-$(date +"%Y-%m-%d-%H-%M-%S").txt"

    echo "$report_content" > "/userspace/$email/$report_filename"
    echo "Raport user: $userspace/$report_filename"
}

read -p "Introduceti numele de utilizator(email): " email
generate_user_report "$email"










