#!/bin/bash

# Set the name of the s3 bucket

BUCKET_NAME="my_s3_bucket"

# Set the path to your directory

DESKTOP_DIR="path/to/deskop"

# Set the path to the local backup directory

BACKUP_DIR="/path/to/local/backup"

# Create the local backup directory if it doesn't already exist

if [ ! -d "$BACKUP_DIR"]; then
	mkdir -p "$BACKUP_DIR"
fi

# Sync the Desktop Directory to the local backup directory 

rsync -avz "$DESKTOP_DIR/" "$BACKUP_DIR"

#Sync the local backup directory to the S3 bucket

aws s3 sync "$BACKUP_DIR" "s3://$BUCKET_NAME"

# Remove the local backup directory

rm -rf "$BACKUP_DIR"



