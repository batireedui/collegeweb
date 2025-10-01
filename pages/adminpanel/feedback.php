<?php
require ROOT . "/pages/adminpanel/start.php"; ?>
<link rel="stylesheet" type="text/css" href="/dist/styles/dataTable.css">
<style>
    .dt-buttons {
        text-align: end;
        margin-bottom: 15px
    }
</style>
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

_selectNoParam(
    $st,
    $co,
    "SELECT id, name, email, phone, feedback, ognoo, ip, unsh FROM feedback",
    $id,
    $name,
    $email,
    $phone,
    $feedback,
    $ognoo,
    $ip,
    $unsh
);
_exec(
    "UPDATE feedback SET unsh = ? WHERE unsh is null",
    's',
    [ognoo()],
    $aff
);
?>
<?php if (isset($_SESSION['messages'])) : ?>
    <div class="col">
        <div class="alert alert-primary alert-dismissible" role="alert">
            <?php foreach ($_SESSION['messages'] as $v) {
                echo "$v";
            } ?>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    </div>
<?php unset($_SESSION['messages']);
endif ?>
<div class="row mt-3">
    <h3>ИРСЭН САНАЛ ХҮСЭЛТҮҮД</h3>
</div>
<div class="row">
    <table class="table table-hover" id="datalist">
        <thead>
            <tr>
                <th>#</th>
                <th>Нэр</th>
                <th>Email</th>
                <th>Утас</th>
                <th>Зээлийн хүсэлт</th>
                <th>Огноо</th>
                <th>Уншсан</th>
                <th>Хаяг</th>
                <th></th>
            </tr>
        </thead>
        <tbody class="table-group-divider">
            <?php
            $dd = 1;
            while (_fetch($st)) { ?>
                <tr>
                    <td scope="row"><?= $dd ?></td>
                    <td id="c1-<?= $id ?>" <?php if($unsh == "") echo 'style="color: blue"'; ?>><?= $name ?></td>
                    <td id="c2-<?= $id ?>" <?php if($unsh == "") echo 'style="color: blue"'; ?>><?= $email ?></td>
                    <td id="c3-<?= $id ?>" <?php if($unsh == "") echo 'style="color: blue"'; ?>><?= $phone ?></td>
                    <td id="c4-<?= $id ?>" <?php if($unsh == "") echo 'style="color: blue"'; ?>><?= $feedback ?></td>
                    <td id="c5-<?= $id ?>" <?php if($unsh == "") echo 'style="color: blue"'; ?>><?= $ognoo ?></td>
                    <td id="c6-<?= $id ?>"><?= $unsh?></td>
                    <td id="c7-<?= $id ?>"><?= $ip ?></td>
                    <td><button class="btn btn-warning btn-sm" onclick="printPage('<?= $id ?>')">ХЭВЛЭХ</button></td>
                </tr>
            <?php
                $dd++;
            } ?>
        </tbody>
    </table>
</div>
<div class="toast-container position-fixed bottom-0 end-0 p-3">
    <div id="liveToast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="toast-header bg-warning">
            <strong class="me-auto">Мэдээлэл</strong>
            <small>Төлөв</small>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body" id="toastbody">

        </div>
    </div>
</div>

<?php
require ROOT . "/pages/adminpanel/footer.php";
require ROOT . "/pages/adminpanel/dataTablefooter.php";
?>
<script>
    function printPage(id) {
                var field=  "";
                field += '<br>Нэр: <strong>' + $("#c1-" + id).html() + '</strong>';
                field += '<br>Email: <strong>' + $("#c2-" + id).html() + '</strong>';
                field += '<br>Утас: <strong>' + $("#c3-" + id).html() + '</strong>';
                field += '<br><strong>Санал хүсэлт:</strong> ' + $("#c4-" + id).html() + '</strong>';
                field += '<br>Огноо: <strong>' + $("#c5-" + id).html() + '</strong>';
                field += '<br>IP хаяг: <strong>' + $("#c7-" + id).html() + '</strong>';
                field += '<br>Уншсан: <strong>' + $("#c6-" + id).html() + '</strong>';
        $.ajax({
            url: "feedback-print", success: function (result) {
                var a = window.open('', '', 'height=800, width=800');
                a.document.write(result);
                a.document.write(field);
                a.document.write("</body></html>");
                a.document.close();
                a.print();
            }
        });
    };
    function deletePost(id) {
        if (confirm("Ангилал устгахдаа итгэлтэй байна уу!") == true) {
            $.ajax({
                url: "aaction",
                type: "POST",
                data: {
                    deletePost: "deletePost",
                    id: id
                },
                error: function(xhr, textStatus, errorThrown) {
                    console.log(errorThrown);
                },
                beforeSend: function() {

                },
                success: function(data) {
                    if (data == "Амжилттай!") {
                        location.reload();
                    } else alert(data);
                },
                async: true
            });
        }
    }
</script>
<?php
require ROOT . "/pages/adminpanel/end.php"; ?>