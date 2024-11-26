<?php

$servername = "localhost";
$username = "root";
$password = ""; 
$dbname = "pt_bendicar";


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Ambil data dari form
    $nama = $_POST['nama'];
    $alamat = $_POST['alamat'];
    $no_telepon = $_POST['No_HP'];
    $identitas = $_POST['Identitas'];

    
    $sql = "INSERT INTO penyewa (Nama, Alamat, No_HP, Identitas) 

    // Proses query
    if ($conn->query($sql) === TRUE) {
        echo "Data berhasil ditambahkan!";
    } else {
        echo "Error: " . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Tambah Penyewa</title>
</head>
<body>

    <h1>Tambah Penyewa</h1>

    <!-- Form untuk menambah penyewa -->
    <form action="index.php" method="POST">
        <label for="nama">Nama:</label><br>
        <input type="text" id="nama" name="nama" required><br><br>

        <label for="alamat">Alamat:</label><br>
        <textarea id="alamat" name="alamat" required></textarea><br><br>

        <label for="No_HP">No Telepon:</label><br>
        <input type="text" id="No_HP" name="No_HP required><br><br>

        <label for="identitas">Identitas:</label><br>
        <input type="text" id="identitas" name="identitas" required><br><br>

        <input type="submit" value="Tambah Penyewa">
    </form>

    <hr>

    <h2>Daftar Penyewa</h2>

    <?php
    // Query untuk mengambil semua data penyewa
    $sql = "SELECT * FROM penyewa";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table border='1'>
                <tr>
                    <th>Id_Peminjam</th>
                    <th>Nama</th>
                    <th>Alamat</th>
                    <th>No_HP</th>
                    <th>Identitas</th>
                </tr>";
        // Tampilkan data penyewa
        while ($row = $result->fetch_assoc()) {
            echo "<tr>
                    <td>{$row['Id_Peminjam']}</td>
                    <td>{$row['Nama']}</td>
                    <td>{$row['Alamat']}</td>
                    <td>{$row['No_HP']}</td>
                    <td>{$row['Identitas']}</td>
                  </tr>";
        }
        echo "</table>";
    } else {
        echo "Tidak ada data penyewa.";
    }
    ?>

</body>
</html>

<?php
$conn->close();
?>