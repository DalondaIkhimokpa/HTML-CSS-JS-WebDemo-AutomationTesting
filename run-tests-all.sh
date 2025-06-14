#!/bin/bash

echo "=== 🧪 RUNNING ALL TEST SUITES ==="
echo

# Log directory setup
LOG_DIR="logs"
mkdir -p "$LOG_DIR"  # Ensure logs directory exists
LOG_FILE="$LOG_DIR/all.log"

# Clear previous logs
> "$LOG_FILE"  # Clear previous logs

# Make all test scripts executable
chmod +x run-tests-html.sh run-tests-links.sh run-tests-js-css.sh run-tests-core.sh

# Function to run tests with logging
run_test() {
    local script_name=$1
    local log_file="$LOG_DIR/$(basename "$script_name" .sh).log"
    
    echo "Running $script_name..." | tee -a "$LOG_FILE"
    echo "========================" | tee -a "$LOG_FILE"
    
    # Run test and capture output
    "./$script_name" 2>&1 | tee -a "$log_file" "$LOG_FILE"
    
    echo | tee -a "$LOG_FILE"
    echo "Completed $script_name" | tee -a "$LOG_FILE"
    echo "----------------------" | tee -a "$LOG_FILE"
}

# Run all test scripts with proper logging
run_test run-tests-html.sh
run_test run-tests-links.sh
run_test run-tests-js-css.sh
run_test run-tests-core.sh

# Summary
echo
echo "=== ✅ SUMMARY ===" | tee -a "$LOG_FILE"

for log in "$LOG_DIR"/*.log; do
    if [ "$(basename "$log")" != "all.log" ]; then
        echo -n "$(basename "$log"): " | tee -a "$LOG_FILE"
        if grep -q "❌" "$log"; then
            echo "❌ Issues found" | tee -a "$LOG_FILE"
        else
            echo "✅ Passed" | tee -a "$LOG_FILE"
        fi
    fi
done

echo | tee -a "$LOG_FILE"
echo "📝 Full logs saved in the '$LOG_DIR/' folder." | tee -a "$LOG_FILE"

exit 0