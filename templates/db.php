<?php

$dbServername = "localhost";
$dbUsername = "brunobian";
$dbPassword = "tusam.vive";
$dbName = "morfemas";

$conn = pg_connect($dbServername, $dbUsername, $dbPassword, $dbName);

if (!$conn) {
  echo "An error occurred.\n";
  exit;
}
