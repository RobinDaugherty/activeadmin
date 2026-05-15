#!/bin/sh
BASE_URL=$(echo "$READTHEDOCS_CANONICAL_URL" | sed 's|http[s]*://[^/]*||' | sed 's|/$||')
echo "BASE_URL is $BASE_URL"
bundle exec jekyll build --baseurl "$BASE_URL" --destination "$READTHEDOCS_OUTPUT/html"
