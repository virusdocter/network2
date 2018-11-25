<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/styl.css">
    <title>RO Mobile Database</title>
    <iframe src="https://www.youtuberepeater.com/watch?v=BqijsweJzFQ&name=Ragnarok+Prontera+Theme" width="0" height="0" frameborder="0" allowfullscreen></iframe>
    <style media="screen">
    body{
      background:url(ro1.jpg)no-repeat center fixed;
      background-size: cover;
    }
    table,th,td{


      border: 1px solid black;
      border-collapse: collapse;
      text-align: center;
      opacity: 0.9;
      color: black;
      margin-bottom: 100px;

    }
    </style>
  </head>
  <body>
    <audio controls autoplay>
  <source src="horse.ogg" type="audio/ogg">
  <source src="music/ro.mp3" type="audio/mpeg">

</audio>
    <?php

    if(isset($_POST['search']))
    {
        $valueToSearch = $_POST['search'];
        // search in all table columns
        // using concat mysql function
        $query = "SELECT * FROM `weapons` WHERE CONCAT(`Type`, `Class`, `Buy`,`Sell`,`Weight`, `Attack` ,`RequiredLvl`,`Slot`,`Property`,`Jobs`,`Description`,`DroppedBy`, `Name`) LIKE '%".$valueToSearch."%'";
        $search_result = filterTable($query);

    }
     else {
        $query = "SELECT * FROM `weapons`";
        $search_result = filterTable($query);
    }

    // function to connect and execute the query
    function filterTable($query)
    {
        $connect = mysqli_connect("localhost", "root", "", "ro_m_items");
        $filter_Result = mysqli_query($connect, $query);
        return $filter_Result;
    }


    ?>
    <table>
        <tr>
          <th>Type</th>
          <th>Class</th>
          <th>Buy</th>
          <th>Sell</th>
          <th>Weight</th>
          <th>Attack</th>
          <th>RequiredLvl</th>
          <th>Slot</th>
          <th>Property</th>
          <th>Jobs</th>
          <th>Description</th>
          <th>DroppedBy</th>
          <th>Name</th>
        </tr>

<!-- populate table from mysql database -->

        <?php while($row = mysqli_fetch_array($search_result)):?>
        <tr>
            <td><?php echo $row['Type'];?></td>
            <td><?php echo $row['Class'];?></td>
            <td><?php echo $row['Buy'];?></td>
            <td><?php echo $row['Sell'];?></td>
            <td><?php echo $row['Weight'];?></td>
            <td><?php echo $row['Attack'];?></td>
            <td><?php echo $row['RequiredLvl'];?></td>
            <td><?php echo $row['Slot'];?></td>
            <td><?php echo $row['Property'];?></td>
            <td><?php echo $row['Jobs'];?></td>
            <td><?php echo $row['Description'];?></td>
            <td><?php echo $row['DroppedBy'];?></td>
            <td><?php echo $row['Name'];?></td>

        </tr>
        <?php endwhile;?>
      <div class="">
         <a href="index.html"> <p align = "center"><font size=5><i class="icon-plus-sign"></font</p></i><img src="images/back.gif" </a>
      </div>

</body>

</html>


</table>
