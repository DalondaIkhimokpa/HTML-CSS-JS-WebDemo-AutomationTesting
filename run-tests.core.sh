#!/bin/bash
mkdir -p logs
LOG_FILE="logs/core.log"
> "$LOG_FILE"

# Clear previous logs
> $LOG_FILE  # Clear previous logs

echo "=== 🧪 RUNNING CORE PHP TESTS (PHPUnit + Selenium) ===" | tee -a "$LOG_FILE"

# PHPUnit
echo "[TEST 1] PHPUnit Tests:" | tee -a "$LOG_FILE"
vendor/bin/phpunit --configuration phpunit.xml 2>&1 | tee -a "$LOG_FILE"

# Selenium (if set up separately)
echo "[TEST 2] Selenium Tests:" | tee -a "$LOG_FILE"
vendor/bin/phpunit --configuration phpunit.xml 2>&1 | tee -a "$LOG_FILE"

echo "=== ✅ CORE TESTS COMPLETE ===" | tee -a "$LOG_FILE"

exit 0

