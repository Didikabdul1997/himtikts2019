<?php
    include "../bantu/koneksi.php";
    $id_peserta   = $_GET['id_peserta'];
    $login = mysqli_query($koneksi,"delete from peserta where id_peserta='$id_peserta'") or die(mysqli_error()."errorrorororororof");
    header("location:data_peserta.php");
?>