<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">

  <title>The HTML5 Herald</title>
  <meta name="description" content="The HTML5 Herald">
  <meta name="author" content="SitePoint">

  <link rel="stylesheet" href="css/jquery.dataTables.min.css?v=1.0">
  <script src="js/jquery-1.12.4.js" type="text/javascript" charset="utf-8"></script>
  <script src="js/jquery.dataTables.min.js" type="text/javascript" charset="utf-8"></script>
  <script language="Javascript">
  		$(document).ready(function() {
    	$('#example').DataTable();
		} );
  </script>
  <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
  <![endif]-->
</head>

<body>

  <table id="example" class="display" cellspacing="0" width="100%">
      <?php
      // exec  mysqli connection
      $servername = "localhost";
      $username = "root";
      $password = "";
      $dbname = "PracticalParseFile";
      // Create connection
      $conn = new mysqli($servername, $username, $password, $dbname);

      $sql = "SHOW COLUMNS FROM datafile;";
      $result = mysqli_query($conn,$sql);

      $headerInfo = array();
      while($row = mysqli_fetch_array($result)){
        $headerInfo[] = $row['Field'];
      }
      ?>
        <thead>
            <tr><?php
                foreach ($headerInfo as $headerField){
                    echo "<th>".$headerField."</th>";
                }
                ?>
            </tr>
        </thead>
        <tfoot>
            <tr><?php
                foreach ($headerInfo as $headerField){
                    echo "<th>".$headerField."</th>";
                }
                ?>
            </tr>
        </tfoot>
        <tbody>
            <?php
                $sql = 'SELECT `VehicleID`, `InhouseSellerID`, `BuyerID`, `ModelID`, `Name`, `Surname`, `SaleDate`, `BuyDate` FROM datafile;';
                $result = $conn->query($sql);
            ?>
            <?php
                if ($result->num_rows > 0) {
                    // output data of each row
                    while($row = $result->fetch_assoc()) {
                        echo "<tr>";
                        echo "<td>" . $row["VehicleID"]. "</td>";
                        echo "<td>" . $row["InhouseSellerID"]. "</td>";
                        echo "<td>" . $row["BuyerID"]. "</td>";
                        echo "<td>" . $row["ModelID"]. "</td>";
                        echo "<td>" . $row["Name"]. "</td>";
                        echo "<td>" . $row["Surname"]. "</td>";
                        echo "<td>" . $row["SaleDate"]. "</td>";
                        echo "<td>" . $row["BuyDate"]. "</td>";
                        echo "</tr>";
                    }
                }
                ?>
        </tbody>
    </table>
</body>
</html>