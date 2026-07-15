#!/bin/bash

SEARCH_PHRASE="Read the Complete Matthew Henry Bible Commentary Online"
REPLACEMENT_PHRASE="The Complete Matthew Henry Bible Commentary"

for file in *; do
    if [ -f "$file" ]; then
        if grep -q "$SEARCH_PHRASE" "$file"; then
            sed -i "s/$SEARCH_PHRASE/$REPLACEMENT_PHRASE/g" "$file"
        fi
    fi
done

echo "Replacement process complete."

