<?php
require '../koneksi.php';

if(isset($_POST["proses"])){
  $nama_kamar = $_POST["nama_kamar"];
  $fasilitas_kamar = $_POST["fasilitas_kamar"];
  $jumlah = $_POST["jumlah"];


  if($_FILES["gambar"]["error"] == 4){
    echo
    "<script> alert('Image Does Not Exist'); </script>"
    ;
  }
  else{
    $fileName = $_FILES["gambar"]["name"];
    $fileSize = $_FILES["gambar"]["size"];
    $tmpName = $_FILES["gambar"]["tmp_name"];

    $validImageExtension = ['jpg', 'jpeg', 'png'];
    $imageExtension = explode('.', $fileName);
    $imageExtension = strtolower(end($imageExtension));
    if ( !in_array($imageExtension, $validImageExtension) ){
      echo
      "
      <script>
        alert('Invalid Image Extension');
      </script>
      ";
    }
    else if($fileSize > 1000000){
      echo
      "
      <script>
        alert('Image Size Is Too Large');
      </script>
      ";
    }
    else{
      $newImageName = uniqid();
      $newImageName .= '.' . $imageExtension;

      move_uploaded_file($tmpName, '../img/' . $newImageName);
      $query = "INSERT INTO kamar VALUES('', '$nama_kamar', '$fasilitas_kamar' , '$jumlah', '$newImageName')";
      mysqli_query($koneksi, $query);
      echo
      "
      <script>
        alert('Successfully Added');
        document.location.href = 'admin.php?page=kamar';
      </script>
      ";
    }
  }
}
