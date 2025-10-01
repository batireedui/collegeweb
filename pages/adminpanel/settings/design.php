<?php
require ROOT . "/pages/adminpanel/start.php"; ?>
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
    $stCa,
    $coCA,
    "SELECT id, name, curr FROM design",
    $id,
    $name,
    $curr
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
    <h3>ЗАГВАРААС СОНГОХ</h3>
</div>
<div class="d-flex m-5">
            <?php
            while (_fetch($stCa)) { ?>
            <div class="form-check">
              <input class="form-check-input" type="radio" onclick='updateValue(<?= $id ?>)' name="design" id="rd<?=$id?>" <?php echo $curr ==1 ? "checked" : ''?>>
              <label class="form-check-label col" for="rd<?=$id?>">
                  <?=$name?><br>
                  <img src="/images/design/<?=$id?>.jpeg" width="300px"/>
              </label>
            </div>
            <?php } ?>
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
require ROOT . "/pages/adminpanel/footer.php"; ?>
<script>
    function updateValue(id) {
        $.ajax({
            url: '/adminpanel/updateVal',
            type: 'post',
            data: {
                type: "design",
                id: id
            },
            error: function(xhr, textStatus, errorThrown) {
                console.log(errorThrown);
            },
            beforeSend: function() {

            },
            success: function(data) {
                alert(data);
            },
            async: true
        })
    }

    function tshow() {
        var toastElList = [].slice.call(document.querySelectorAll('.toast'))
        var toastList = toastElList.map(function(toastEl) {
            return new bootstrap.Toast(toastEl)
        })
        toastList.forEach(toast => toast.show())
    }

    function deleteMenu(id) {
        if (confirm("Цэс устгахдаа итгэлтэй байна уу!") == true) {
            $.ajax({
                url: "maction",
                type: "POST",
                data: {
                    deleteMenu: "deleteMenu",
                    id: id
                },
                error: function(xhr, textStatus, errorThrown) {
                    console.log(errorThrown);
                },
                beforeSend: function() {

                },
                success: function(data) {
                    if (data == "Амжилттай устгагдлаа") {
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