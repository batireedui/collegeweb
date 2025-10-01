<?php
if (isset($_SESSION['user_id'])) {
    if ($_POST['type'] == "menuerembe") {
        $id = $_POST['id'];
        $turul = $_POST['turul'];
        $value = $_POST['value'];
        $sqlval = $turul . "='" . $value . "'";
        $sqlaa = "UPDATE menu SET $sqlval WHERE id = '$id'";
        if ($con->query($sqlaa)) {
            echo "ok";
        } else {
        }
    }
    elseif ($_POST['type'] == "translate") {
        $id = $_POST['id'];
        $turul = $_POST['turul'];
        $value = $_POST['value'];
        $sqlval = $turul . "='" . $value . "'";
        $sqlaa = "UPDATE language SET $sqlval WHERE id = '$id'";
        if ($con->query($sqlaa)) {
            echo "Амжилттай";
        } else {
            echo "Алдаа гарлаа!";
        }
    }
    elseif ($_POST['type'] == "design") {
        $id = $_POST['id'];
        $sqlaa = "UPDATE design SET curr=0";
        $con->query($sqlaa);
        $sqlaa = "UPDATE design SET curr=1 WHERE id = '$id' ";
        if ($con->query($sqlaa)) {
            echo "Амжилттай";
        } else {
            echo "Алдаа гарлаа!";
        }
    }
    elseif ($_POST['type'] == "postTuluv") {
        $id = $_POST['id'];
        $tuluv = 1;
        if($_POST['tuluv'] == "false"){
            $tuluv = 0;
        }
        
        $sqlaa = "UPDATE posts SET tuluv= '$tuluv' WHERE id='$id'";
        if ($con->query($sqlaa)) {
            echo "Амжилттай";
        } else {
            echo "Алдаа гарлаа!";
        }
    }
    elseif ($_POST['type'] == "menuTuluv") {
        $id = $_POST['id'];
        $tuluv = 1;
        if($_POST['tuluv'] == "false"){
            $tuluv = 0;
        }
        
        $sqlaa = "UPDATE menu SET tuluv= '$tuluv' WHERE id='$id'";
        if ($con->query($sqlaa)) {
            echo "Амжилттай";
        } else {
            echo "Алдаа гарлаа!";
        }
    }
} else redirect("/adminpanel/login");
