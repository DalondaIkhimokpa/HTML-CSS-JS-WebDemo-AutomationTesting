<?php
$pages = ['index.html', 'about.html'];
foreach ($pages as $page) {
    $html = file_get_contents($page);
    preg_match_all('/<a[^>]+href=([\'"])(?<href>.+?)\1[^>]*>/i', $html, $matches);
    
    foreach ($matches['href'] as $link) {
        if (str_starts_with($link, 'http')) {
            $status = get_headers($link)[0];
            echo "[$status] $link\n";
        } else {
            echo "[INTERNAL] $link\n";
        }
    }
}