<?php
    include "../bantu/koneksi.php";
    $no_register   = $_POST['no_register'];
    $nama   = $_POST['nama'];
    $alamat    = $_POST['alamat'];
    $no = $_POST['no'];
    $kategori = $_POST['kategori'];
    $bayar = $_POST['bayar'];
    $kehadiran = "belum";
    $login = mysqli_query($koneksi,"insert into peserta(no_register,nama,alamat,no,kategori,bayar,kehadiran) values('$no_register','$nama','$alamat','$no','$kategori','$bayar','$kehadiran')");
    if($login){
        header("location:data_peserta.php");
    }else{
        echo "<script>alert('Gagal di Simpan!!');history.go(-1);</script>";
    }    
?>