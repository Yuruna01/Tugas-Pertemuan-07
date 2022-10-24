<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabel Informasi Mahasiswa</title>
</head>
<body>
    <div class="container">
        <h1><center>List Mahasiswa dan Program studi</center></h1>
        <table align="center" border=2>
            <thead>
                <tr>
                    <th>Nim</th>
                    <th>Nama</th>
                    <th>Program Studi</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
            <?php $count = 0; foreach ($mahasiswa->result() as $row) : $count++; ?>
                <tr>
                    <th><?php echo $row->NIM;?></th>
                    <td><?php echo $row->Nama;?></td>
                    <td><?php echo $row->Program_Studi;?></td>
                    <td><a href="<?php echo site_url('mahasiswa/delete/'.$row->NIM);?>">Hapus</a></td>
                </tr>
            <?php endforeach;?>
            </tbody>
        </table>
    </div>
</body>
</html>