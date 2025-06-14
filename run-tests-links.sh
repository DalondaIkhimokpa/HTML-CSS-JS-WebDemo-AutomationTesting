#!/bin/bash
echo "=== RUNNING LINK AND IMAGE CHECK TESTS ==="

# Log file
LOG_FILE="logs/links.log"

# # Clear previous logs 
> $LOG_FILE  # Clear previous logs

# Test 1: Check All HREF Links
echo "[TEST 1] Broken Link Check:" | tee -a $LOG_FILE
grep -Eroh 'href="[^"]*"' . | sort | uniq | while read -r link; do
  url=${link#href=\"}
  url=${url%\"}
  if [[ $url == http* ]]; then
    code=$(curl -s -L -o /dev/null -w "%{http_code}" "$url")
    echo "$code $url" | tee -a $LOG_FILE
    if [[ $code -ne 200 && $code -ne 301 && $code -ne 302 ]]; then
      echo "BROKEN LINK: $url" | tee -a $LOG_FILE
    fi
  fi
done

# Test 2: Check Image Sources
echo "[TEST 2] Image Link Check:" | tee -a $LOG_FILE
grep -Eroh '<img[^>]*src="[^"]*"' . | sed -E 's/.*src="([^"]*)".*/\1/' | sort | uniq | while read -r img; do
  if [[ $img == http* ]]; then
    code=$(curl -s -L -o /dev/null -w "%{http_code}" "$img")
    echo "$code $img" | tee -a $LOG_FILE
    if [[ $code -ne 200 && $code -ne 301 && $code -ne 302 ]]; then
      echo "BROKEN IMAGE LINK: $img" | tee -a $LOG_FILE
    fi
  else
    if [ ! -f "$img" ]; then
      echo "MISSING LOCAL IMAGE: $img" | tee -a $LOG_FILE
    fi
  fi
done

echo "=== LINK AND IMAGE CHECK TESTS COMPLETED ==="
echo "See $LOG_FILE for details."
