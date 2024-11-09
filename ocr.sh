#!/bin/bash

# Define the directory where screenshots are saved
screenshot_dir="$HOME/Pictures"

# Step 1: Capture the screenshot using cosmic-screenshot
cosmic-screenshot

# Step 2: Find the latest screenshot in the directory based on the timestamp
latest_screenshot=$(ls -t "$screenshot_dir"/screenshot*.png | head -n 1)

# Check if a screenshot was found
if [[ -f "$latest_screenshot" ]]; then
    # Step 3: Run OCR on the latest screenshot and store the output in a variable
    text=$(tesseract "$latest_screenshot" stdout 2>/dev/null)
    
    # Print the OCR'd text to the console (optional, for debugging)
    echo "OCR Output:"
    echo "$text"
    
    # Step 4: Copy the OCR'd text to the clipboard using wl-copy
    echo "$text" | wl-copy

    # Step 5: Remove the screenshot image after OCR processing
    rm "$latest_screenshot"
    
    # Notify success
    echo "Text copied to clipboard. Screenshot saved at $latest_screenshot has been removed."
else
    echo "No screenshot found."
fi

