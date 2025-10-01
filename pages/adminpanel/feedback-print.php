<!DOCTYPE html>
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="table.css" rel="stylesheet">'

    <style>
        P {
            font-weight: bold;
            text-transform: uppercase;
            text-align: right;
        }

        .h {
            text-align: right;
        }

        .selector {
            border: 1px solid black;
            border-radius: 5px;
            border-width: 2px;
            border-color: black;
            border-style: ;
        }
    </style>
</head>

<body>

    <div class="row">
        <div class="col">
            <div style="text-align: center">
                <img src='https://admin.agricorp.mn/images/logo.png' width='150px'/>
                <h5>ХӨДӨӨ АЖ АХУЙН КОРПОРАЦИ ТӨХХК</h5>
                <h3>ИРСЭН САНАЛ ХҮСЭЛТ</h3></div>
        </div><br>
    </div>
    <div class=" selector">

    </div>
    <div style="display: flex; flex-direction: row;justify-content: space-between;">
        <div>
            <pp> Огноо:
                <?php
                $year = date("Y");
                $month = date("m");
                $day = date("d");

                echo $year . " оны  " . $month . "-р сарын  " . $day;
                ?>
            </pp>
        </div>

        <div>
            <hh> Улаанбаатар хот</hh>
        </div>
    </div>