<?php
    include "../bantu/koneksi.php";
    $id_peserta = $_GET['id_peserta'];
    $edit = mysqli_query($koneksi,"update peserta set kehadiran='sudah' where id_peserta='$id_peserta'");
    if($edit){
        header("location:data_belum.php");
    }else{
        echo "<script>alert('Gagal di Simpan!!');history.go(-1);</script>";
    }    
?>