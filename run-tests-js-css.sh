#!/bin/bash
# Setup logging
LOG_DIR="logs"
mkdir -p "$LOG_DIR"
LOG_FILE="$LOG_DIR/js-css.log"
> "$LOG_FILE"

echo "=== RUNNING JS + CSS CHECKS ===" | tee -a "$LOG_FILE"

# Replace the JavaScript test section with:
JS_FILE=""
[ -f "assets.js/js/main.js" ] && JS_FILE="assets.js/js/main.js"

echo "[TEST 1] JavaScript Functionality:" | tee -a "$LOG_FILE"
if [ -n "$JS_FILE" ]; then
    if grep -q "addEventListener" "$JS_FILE"; then
        echo "✅ JS interactivity detected" | tee -a "$LOG_FILE"
    else
        echo "❌ JS interactivity missing" | tee -a "$LOG_FILE"
    fi
else
    echo "❌ File not found: assets/js/main.js or assets.js/main.js" | tee -a "$LOG_FILE"
fi

# Test 2: CSS file check
echo "[TEST 2] CSS File Check:" | tee -a "$LOG_FILE"
if [ -f "main.css" ]; then
    echo "✅ main.css exists" | tee -a "$LOG_FILE"
else
    echo "❌ main.css missing" | tee -a "$LOG_FILE"
fi

echo "=== ✅ JS + CSS CHECKS COMPLETE ===" | tee -a "$LOG_FILE"
