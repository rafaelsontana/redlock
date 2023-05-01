<?php
$servername = "mysql";
$username = "test";
$password = "root";
$dbname = "Redlock";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT COUNT(*) as total FROM users";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  $row = $result->fetch_assoc();
  echo "Total Users: " . $row["total"];
} else {
  echo "0 results";
}
$conn->close();
?>
