?php
$servername = "172.18.0.2";
$username = "root";
$password = "Ubuntu123$";
$dbname = "Redlock";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT * from users";
$result = $conn->query($sql);

echo $result->num_rows;

$conn->close();
?>
