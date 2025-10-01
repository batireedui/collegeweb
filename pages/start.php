<?php
$medeeMenuId = "2";
$medeeCateId = "4";
$onclohCateId = "3";
$salbarCateId = "2";
$userMenuId = "1";
$metaPost = false;
$visits = 0;

if (!isset($_SESSION['visit'])) {
    _selectRow(
        "SELECT count(ognoo) FROM visits WHERE ognoo=?",
        "s",
        [ognooday()],
        $visits
    );

    if ($visits > 0) {
        _exec(
            "UPDATE visits SET too = too+1 WHERE ognoo=?",
            "s",
            [ognooday()],
            $affect
        );
    } else {
        _exec(
            "INSERT INTO visits (ognoo, too) VALUES (?, ?)",
            "si",
            [ognooday(), 1],
            $affect
        );
    }
    $_SESSION['visit'] = "1";
}
$design = "";
_selectRowNoParam(
    "SELECT val FROM design WHERE curr = 1",
    $design
);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= $webname ?> </title>
    <link rel="icon" type="image/x-icon" href="<?= $favi ?>" />
    <meta name="description" content='<?= $webmeta ?>' />
    <meta content="<?= $webmeta ?>" name="keywords">
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,opsz,wght@0,9..40,100..1000;1,9..40,100..1000&family=Inter:slnt,wght@-10..0,100..900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <!-- Icon Font Stylesheet -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link rel="stylesheet" href="/lib/animate/animate.min.css" />
    <link href="/lib/lightbox/css/lightbox.min.css" rel="stylesheet">
    <link href="/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">


    <!-- Customized Bootstrap Stylesheet -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/css/style.css" rel="stylesheet">