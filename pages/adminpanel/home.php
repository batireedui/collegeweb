<?php
require ROOT . "/pages/adminpanel/start.php";
$s_date = date("Y-m-01", strtotime(ognooday()));
$l_date = date("Y-m-t", strtotime(ognooday()));
_selectRow(
    "SELECT sum(too) FROM visits WHERE ognoo=?",
    "s",
    [ognooday()],
    $visits
);
_selectRowNoParam(
    "SELECT sum(too) FROM visits WHERE ognoo BETWEEN '$s_date' and '$l_date'",
    $visitsMonth
);
_selectRowNoParam(
    "SELECT sum(too) FROM visits",
    $visitsSum
);
?>
<style>
    .lgtext {
        font-size: 2rem;
    }

    .itext {
        font-size: 3rem;
    }
</style>
<?php
require ROOT . "/pages/adminpanel/header.php";
_selectRowNoParam("SELECT count(id) FROM posts", $ptoo);
?>
<div class="row">
    <div class="col bg-primary text-white m-3 p-3 rounded-3 d-flex justify-content-between">
        <div class="">Нийт мэдээ
            <div class="lgtext"><?= $ptoo ?></div>
        </div>
        <div class="itext"><i class="fa fa-file-text" aria-hidden="true"></i></div>
    </div>
    <div class="col bg-success text-white m-3 p-3  rounded-3 d-flex justify-content-between">
        <div class="">Сайтын хандалт
            <div class="lgtext">Өнөөдөр</div>
        </div>
        <div class="itext"><?= $visits ?></div>
    </div>
    <div class="col bg-warning text-white m-3 p-3  rounded-3 d-flex justify-content-between">
        <div class="">Сайтын хандалт
            <div class="lgtext">Энэ сард</div>
        </div>
        <div class="itext"><?= $visitsMonth ?></div>
    </div>
    <div class="col bg-danger text-white m-3 p-3  rounded-3 d-flex justify-content-between">
        <div class="">Сайтын хандалт
            <div class="lgtext">Нийт</div>
        </div>
        <div class="itext"><?= $visitsSum ?></div>
    </div>
</div>
<div>
    <div>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load("current", {
                packages: ['corechart']
            });
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ["Огноо", "Хандалт", {
                        role: "style"
                    }],
                    <?php
                    $colors = array('#ffa600', '#ff7c43', '#f95d6a', '#d45087', '#a05195', '#665191', '#2f4b7c', '#006c9e', '#005982', '#003f5c');
                    $dd = 0;
                    _selectNoParam(
                        $sst,
                        $ssc,
                        "SELECT ognoo, too FROM `visits` ORDER BY ognoo DESC LIMIT 10",
                        $sognoo,
                        $stoo
                    );
                    while (_fetch($sst)) {
                        echo "['$sognoo', $stoo, '$colors[$dd]'], ";
                        $dd++;
                    }
                    ?>
                ]);

                var view = new google.visualization.DataView(data);
                view.setColumns([0, 1,
                    {
                        calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"
                    },
                    2
                ]);

                var options = {
                    title: "Хандалт сүүлийн 10-н өдрөөр",
                    width: "100%",
                    height: 500,
                    bar: {
                        groupWidth: "95%"
                    },
                    legend: {
                        position: "none"
                    },
                };
                var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
                chart.draw(view, options);
            }
        </script>
        <div id="columnchart_values"></div>
    </div>
</div>
<?php
require ROOT . "/pages/adminpanel/footer.php";
require ROOT . "/pages/adminpanel/end.php"; ?>