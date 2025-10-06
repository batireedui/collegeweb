<?php
$medeeslug = "";
_selectNoParam(
    $stCa,
    $coCA,
    "SELECT id, slug, name$lang, meta, turul, tuluv, parent_id FROM menu WHERE tuluv='1' and parent_id = '0' ORDER BY erembe",
    $id,
    $slug,
    $name,
    $meta,
    $turul,
    $tuluv,
    $parent_id
);

function subMenuCreate($pid)
{
    global $medeeMenuId;
    global $lang;

    $menu_val = "";
    _selectNoParam(
        $stCa,
        $coCA,
        "SELECT id, slug, name$lang, meta, turul, tuluv, parent_id FROM menu WHERE tuluv='1' and parent_id = '$pid' ORDER BY erembe",
        $id,
        $slug,
        $name,
        $meta,
        $turul,
        $tuluv,
        $parent_id
    );
    while (_fetch($stCa)) {
        if ($id == $medeeMenuId) {
            $medeeslug = $slug;
        }
        $link = "/";
        if ($turul == 'link') $link = $meta;
        else if ($turul == 'category') $link = "/single/category?c=$slug";
        else if ($turul == 'post') $link = "/single/post?c=$slug&t=1";
        else if ($turul == 'submenu') $link = "#";

        if ($turul == 'submenu') {
            $menu_val .= "<div class='dropdown-item dropdown'>
                <a href='#' class='dropdown-item' data-bs-toggle='dropdown'>
                    <span class='dropdown-toggle'>$name</span>
                </a>
            </div>";
        } else {
            $menu_val .= "<a class='dropdown-item' href='$link'>$name</a>";
        }

        //$menu_val .= subMenuCreate($id);
    }
    return $menu_val;
}

if ($metaPost == true) {
?>
    <meta property="og:url" content="/" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content='<?= $pname ?>' />
    <meta property="og:description" content='<?= $webname ?>' />
    <meta property="og:image" content="<?= $pimage ?>" />

    <meta name="twitter:title" content='<?= $pname ?>'>
    <meta name="twitter:description" content='<?= $webname ?>'>
    <meta name="twitter:image" content="<?= $pimage ?>"> <!-- Зургийн URL -->
    <meta name="twitter:card" content="<?= $pimage ?>"> <!-- Зургийг харуулах -->
<?php } else { ?>
    <meta property="og:url" content="/" />
    <meta property="og:type" content="website" />
    <meta property="og:title" content='<?= $webname ?>' />
    <meta property="og:description" content='<?= $webemail ?>' />

    <meta name="twitter:title" content='<?= $webname ?>'>
    <meta name="twitter:description" content='<?= $webemail ?>'>
<?php } ?>
<script async src="https://cse.google.com/cse.js?cx=7365dcdd8404a4feb">
</script>
</head>

<body>

    <!-- Spinner Start -->
    <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
        <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
            <span class="sr-only">Түр хүлээнэ үү...</span>
        </div>
    </div>
    <!-- Spinner End -->

    <!-- Topbar Start -->
    <div class="container-fluid topbar px-0 px-lg-4 bg-light py-2 d-none d-lg-block">
        <div class="container">
            <div class="row gx-0 align-items-center">
                <div class="col-lg-8 text-center text-lg-start mb-lg-0">
                    <div class="d-flex flex-wrap">
                        <div class="border-end border-primary pe-3">
                            <a href="#" class="text-muted small"><i class="fas fa-phone-alt text-primary me-2"></i><?= $webphone ?></a>
                        </div>
                        <div class="ps-3">
                            <a href="mailto:<?= $webemail ?>" class="text-muted small"><i class="fas fa-envelope text-primary me-2"></i><?= $webemail ?></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 text-center text-lg-end">
                    <div class="d-flex justify-content-end">
                        <div class="d-flex pe-3">
                            <a class="btn p-0 text-primary me-3" href="<?= $webfacebook ?>"><i class="fab fa-facebook-f"></i></a>
                            <!--
                            <a class="btn p-0 text-primary me-3" href="#"><i class="fab fa-twitter"></i></a>
                            <a class="btn p-0 text-primary me-3" href="#"><i class="fab fa-instagram"></i></a>
                            <a class="btn p-0 text-primary me-0" href="#"><i class="fab fa-linkedin-in"></i></a>
                            -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->

    <!-- Navbar & Hero Start -->
    <div class="container-fluid nav-bar px-0 px-lg-4 py-lg-0">
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light">
                <a href="/" class="navbar-brand p-0">
                    <img src="/images/logoH.png" alt="Logo">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav mx-0 mx-lg-auto">
                        <?php while (_fetch($stCa)) {
                            if ($id == $medeeMenuId) {
                                $medeeslug = $slug;
                            }
                            $link = "/";
                            if ($turul == 'link') $link = $meta;
                            else if ($turul == 'category') $link = "/single/category?c=$slug";
                            else if ($turul == 'post') $link = "/single/post?c=$slug&t=1";
                            else if ($turul == 'submenu') $link = "#";
                            //else if ($turul == 'submenu') $link = "/main?c=$slug";

                            if ($turul == 'submenu') { ?>
                                <div class="nav-item dropdown">
                                    <a style="font-family: 'Roboto Condensed'" href="#" class="nav-link fw-bold" data-bs-toggle="dropdown">
                                        <span class="dropdown-toggle"><?= $name ?></span>
                                    </a>
                                    <div class="dropdown-menu">
                                        <?php echo subMenuCreate($id); ?>
                                    </div>
                                </div>
                            <?php
                            } else {
                            ?>
                                <a style="font-family: 'Roboto Condensed'"
                                    class="nav-item nav-link fw-bold <?php echo $link == "/" ? ""
                                                                        : (strpos($URI, $link) > -1 ? 'active' : '') ?>"
                                    aria-current="page"
                                    href="<?= $link ?>"
                                    <?php echo ($turul == 'link' && $link != "/")
                                        ? 'target="_blank"' : "" ?>>
                                    <?= $name ?>
                                </a>
                        <?php }
                        } ?>
                        <div class="nav-btn px-3">
                            <button class="btn-search btn btn-primary btn-md-square rounded-circle flex-shrink-0" data-bs-toggle="modal" data-bs-target="#searchModal"><i class="fas fa-search"></i></button>
                            <a href="https://elselt.uvcollege.edu.mn/" class="btn btn-primary rounded-pill py-2 px-4 ms-3 flex-shrink-0">ЭЛСЭЛТ</a>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </div>
    <!-- Navbar & Hero End -->

    <!-- Modal Search Start -->
    <div class="modal fade" id="searchModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-fullscreen">
            <div class="modal-content rounded-0">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">ХАЙЛТ ХИЙХ ҮГЭЭ ОРУУЛНА УУ</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body d-flex align-items-center bg-primary">
                    <div class="input-group w-75 mx-auto d-flex">
                        <input type="search" class="form-control p-3" placeholder="Хайлт хийх " aria-describedby="search-icon-1">
                        <span id="search-icon-1" class="btn bg-light border nput-group-text p-3"><i class="fa fa-search"></i></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal Search End -->