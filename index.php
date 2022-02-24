<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />    
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <link rel="icon" href="dk.png">
  <title>Delete Multiple Data - www.dewankomputer.com</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <style>
    .removeRow{
      background-color: #FF6347;
      color:#FFFFFF;
    }
  </style>
</head>
<body>
  <nav class="navbar navbar-dark bg-primary">
    <a class="navbar-brand text-white" href="index.php">
      Dewan Komputer
    </a>
  </nav>

  <div class="container">
    <h3 align="center" class="mb-3 mt-3">Menghapus Multiple Data Menggunakan Ajax pada PHP</h3>
      <?php
        include 'koneksi.php';
        $query = "SELECT * FROM tbl_karyawan";
        $dewan1 = $db1->prepare($query);
        $dewan1->execute();
        $res1 = $dewan1->get_result();

        if($res1->num_rows > 0){
      ?>
      <div align="right">
        <button type="button" name="btn_delete" id="btn_delete" class="btn btn-danger mb-4 mt-4">Delete Selected</button>
      </div>

        <div class="table-responsive">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>Nama Lengkap</th>
                <th>Jenis Kelamin</th>
                <th>Alamat</th>
                <th><input type="checkbox" class="form-control check_all"/></th>
              </tr>
            </thead>
            <tbody>           
              <?php while($row = $res1->fetch_assoc()){ ?>
                <tr class="check" id="<?php echo $row["id"]; ?>">
                  <td><?php echo $row["nama_lengkap"]; ?></td>
                  <td><?php echo $row["jenkel"]; ?></td>
                  <td><?php echo $row["alamat"]; ?></td>
                  <td>
                    <input type="checkbox" name="id[]" class="form-control chk_boxes1" value="<?php echo $row["id"]; ?>"/>
                  </td>
                </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      <?php } ?>

    <div class="text-center">© <?php echo date('Y'); ?> Copyright:
      <a href="https://dewankomputer.com/"> Dewan Komputer</a>
    </div>

    <script src="js/jquery-3.3.1/jquery.min.js"></script>
    <script>
      $(document).ready(function(){
          $('.chk_boxes1').click(function(){
              if($(this).is(':checked')){
                  $(this).closest('tr').addClass('removeRow');
              } else {
                  $(this).closest('tr').removeClass('removeRow');
              }
          });


        $('#btn_delete').click(function(){
          if(confirm("Apakah Anda yakin ingin menghapus data ini?")){
            var id = [];

            $(':checkbox:checked').each(function(i){
              id[i] = $(this).val();
            });

            if(id.length === 0){
              alert("Pilih minimal satu data");
            }else{
              $.ajax({
                url:'delete.php',
                method:'POST',
                data:{id:id},
                success:function(){
                  for(var i=0; i<id.length; i++){
                    $('tr#'+id[i]+'').fadeOut('slow');
                  }
                }
              });
            }
          } else {
            return false;
          }
        });

        $('.check_all').click(function() {
            $('.chk_boxes1').prop('checked', this.checked);
            if($(this).is(':checked')){
                $('.check').addClass('removeRow');
            } else {
                $('.check').removeClass('removeRow');
            }
        });
      });
    </script>
</body>
</html>