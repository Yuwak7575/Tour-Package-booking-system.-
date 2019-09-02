<?php

if(!empty($_FILES))
{
    $ext = strtolower(pathinfo($_FILES['uplod']['name'], PATHINFO_EXTENSION));
    $name = md5(microtime()) . '.'. $ext;
    $tempName = $_FILES['uplod']['tmp_name'];
    $error = $_FILES['uplod']['error'];
    if(!file_exists('images'))
    {
        mkdir('images');
    }
    $uploadPath = 'images/';
    $imgExt = ['jpg', 'png', 'jpeg', 'gif'];

    if($error == 0)
    {
        if(in_array($ext, $imgExt))
        {
            if(move_uploaded_file($tempName, $uploadPath . $name))
            {
                echo "<script>";
         echo "alert('Your packages has been successfully booked !! Thank You !!');";
         echo "window.location.replace('index.html');";
         echo "</script>";
            }else
                {
                echo "<script>";
         echo "alert('Your booking has been canceled please !! Try Again !!');";
         echo "window.location.replace('upload.php');";
         echo "</script>";
            }
        }else
            {
            echo " file must be " . implode(',', $imgExt) . ' format';
        }
    }
}


?>



<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>

<style type="text/css">
    body{
        margin:0px;
        background-image: url(ghandruk.jpg);
        background-repeat: no-repeat;
        background-size: 100%;

    }

    .see:hover
{
    background-color: black;
    cursor: pointer;
    color: white;
    
}



</style>



<body>
<blockquote>
    <div class="container">
        <h1><i class="glyphicon glyphicon-user"></i>Citizenship or License card is required inorder to confirm your booking please upload !!
            <hr>

        <form action="" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="image">Image</label>
                <input type="file" name="uplod" class="btn btn-default">
            </div>

            <div class="form-group">
                <button class="see">
                    <i class="glyphicon glyphicon-upload"></i>Upload
                </button>
            </div>
        </form>
    </div>
</blockquote>
</body>
</html>
