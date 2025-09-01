# Journal Data Storage

This directory contains JSON files that store journal entries and comments.

## Files:

- `entries.json` - All journal entries from users
- `comments.json` - All comments on journal entries (if implemented)

## How it works:

The journal uses GitHub as a simple database by storing data in these JSON files. When users add new entries or comments, the JavaScript code uses the GitHub API to read and update these files.

## Security Note:

This approach requires a GitHub Personal Access Token to work. Make sure to keep your token secure and never commit it to the repository.
