# s3_backup
A bash script for uploading backup to aws s3 bucket
This script does the following:

Sets the name of the S3 bucket and the paths to the desktop directory and local backup directory.
Creates the local backup directory if it doesn't already exist.
Syncs the data in the desktop directory to the local backup directory using the rsync command.
Syncs the local backup directory to the S3 bucket using the aws s3 sync command.
Removes the local backup directory.
To run this script, you will need to have the AWS CLI installed and configured with access to your S3 bucket. You will also need to replace /path/to/desktop and /path/to/local/backup with the actual paths to your desktop directory and local backup directory, and replace my-s3-bucket with the actual name of your S3 bucket.

Save the script to a file with a .sh extension (e.g., backup.sh) and make it executable by running the following command:

chmod +x s3_backup.sh
