<?php
require ROOT . "/pages/start.php";
$slug = $_GET['c'] ?? '0';
$tt = $_GET['t'] ?? '0';
$field = "slug";
if ($tt == "1") {
    _selectRowNoParam(
        "SELECT meta FROM menu WHERE slug = '$slug'",
        $pid
    );
    $field = "id";
} else $pid = $slug;

_selectRowNoParam(
    "SELECT id, name$lang, body$lang, image, ognoo FROM posts WHERE $field = '$pid'",
    $pid,
    $pname,
    $pbody,
    $pimage,
    $pognoo
);
?>
<meta property="og:url" content="/" />
<meta property="og:type" content="website" />
<meta property="og:title" content='<?= $pname ?>' />
<meta property="og:description" content='<?= $webname ?>' />
<meta property="og:image" content="<?= $pimage ?>" />
<?php
require ROOT . "/pages/header.php";

if ($slug != "0") { ?>
        <div class="container-fluid bg-breadcrumb">
            <div class="container text-center py-5" style="max-width: 900px;">
                <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s"><?=$pname?></h4>
            </div>
        </div>
        <div class="container-fluid bg-light about py-5">
            <div class="container">
                <div class="row g-5">
                    <div class="col-xl-12 wow fadeInLeft" data-wow-delay="0.2s">
                        <div class="about-item-content bg-white rounded p-5 h-100">
                            <!--<h4 class="text-primary">About Our Company</h4>
                            <h1 class="display-4 mb-4"><?=$pname?></h1>-->
                            <p><?=$pbody?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<?php
} else {
    require ROOT . "/pages/404in.php";
}
require ROOT . "/pages/footer.php"; ?>