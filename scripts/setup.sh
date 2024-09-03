#!/bin/bash

# Connect to Neon and set up schema
psql -h ep-sweet-thunder-a2xqj6wr.eu-central-1.aws.neon.tech -U Behavioral_owner -d Behavioral

echo "Database setup completed."
