<?php
    include "../bantu/koneksi.php";
    $id_peserta = $_POST['id_peserta'];
    $no_register   = $_POST['no_register'];
    $nama   = $_POST['nama'];
    $alamat    = $_POST['alamat'];
    $no = $_POST['no'];
    $kategori = $_POST['kategori'];
    $bayar = $_POST['bayar'];
    $kehadiran = $_POST['kehadiran'];
    $edit = mysqli_query($koneksi,"update peserta set no_register='$no_register', nama='$nama', alamat='$alamat', no='$no', kategori='$kategori', bayar='$bayar', kehadiran='$kehadiran' where id_peserta='$id_peserta'");
    if($edit){
        header("location:data_peserta.php");
    }else{
        echo "<script>alert('Gagal di Simpan!!');history.go(-1);</script>";
    }    
?>