#!/bin/bash
echo "=== RUNNING HTML VALIDATION AND ACCESSIBILITY TESTS ==="

# Log file setup
LOG_DIR="logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/html.log"
> "$LOG_FILE"  # Clear previous logs

# Function to clean up on exit
cleanup() {
    echo "Cleaning up..."
    pkill -f "html-validator" 2>/dev/null
    exit 0
}
trap cleanup EXIT

# Test 1: HTML Validation
echo "[TEST 1] HTML Validation:" | tee -a "$LOG_FILE"
npx html-validator --file ./index.html --verbose 2>&1 | tee -a "$LOG_FILE"

# Test 2: Check for Missing Alt Attributes
echo "[TEST 2] Missing Alt Attributes Check:" | tee -a "$LOG_FILE"
grep -Eroh '<img[^>]*>' . | while read -r img; do
    if [[ $img != *'alt="'* ]]; then
        echo "MISSING ALT ATTRIBUTE: $img" | tee -a "$LOG_FILE"
    fi
done

echo "=== HTML AND ACCESSIBILITY TESTS COMPLETED ===" | tee -a "$LOG_FILE"
echo "See $LOG_FILE for details."