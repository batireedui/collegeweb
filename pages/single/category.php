<?php
require ROOT . "/pages/start.php";
?>

<?php
require ROOT . "/pages/header.php";
$slug = $_GET['c'] ?? '0';
$t = $_GET['t'] ?? '0';
if($t=="1") {
    _selectNoParam(
        $singlestmt,
        $singleCA,
        "SELECT DISTINCT posts.id, posts.name$lang, posts.image, posts.ognoo, posts.slug FROM `posts` 
            INNER JOIN post_cate ON posts.id = post_cate.post_id 
                WHERE turul = 'post' and post_cate.cate_id 
                    IN (SELECT id FROM `category` WHERE slug = '$slug')",
        $postid,
        $name,
        $image,
        $ognoo,
        $postsslug
    );
    
    _selectRowNoParam(
        "SELECT name FROM `category` WHERE slug = '$slug'",
        $title_name
    );
} else {
    _selectNoParam(
        $singlestmt,
        $singleCA,
        "SELECT DISTINCT posts.id, posts.name$lang, posts.image, posts.ognoo, posts.slug FROM `posts` 
            INNER JOIN post_cate ON posts.id = post_cate.post_id 
                WHERE turul = 'post' and post_cate.cate_id 
                    IN (SELECT cate_id FROM `menu` INNER JOIN menu_cate ON menu.id = menu_cate.menu_id WHERE menu.slug = '$slug')",
        $postid,
        $name,
        $image,
        $ognoo,
        $postsslug
    );
    
    _selectRowNoParam(
        "SELECT name FROM `menu` WHERE slug = '$slug'",
        $title_name
    );
}
if ($slug != "0") { ?>
<div class="container-fluid bg-breadcrumb">
    <div class="container text-center py-5" style="max-width: 900px;">
        <h4 class="text-white display-4 mb-4 wow fadeInDown" data-wow-delay="0.1s"><?=$title_name?></h4>
    </div>
</div>
<div class="container-fluid blog py-5">
    <div class="container py-5">
        <div class="row g-4 justify-content-center">
            <?php
            while (_fetch($singlestmt)) {
            $image == "" ? $iurl = "/images/blog-2.png" : $iurl = $image;
            ?>
                <div class="col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="blog-item">
                        <div class="blog-img">
                            <img src="<?=$iurl?>" class="img-fluid rounded-top w-100" alt="">
                            <div class="blog-categiry py-2 px-4">
                                <span>АНГИЛАЛ</span>
                            </div>
                        </div>
                        <div class="blog-content p-4">
                            <div class="blog-comment d-flex justify-content-between mb-3">
                                <div class="small"><span class="fa fa-calendar text-primary"></span><?=$ognoo?></div>
                            </div>
                            <a href="#" class="h4 d-inline-block mb-3"><?=$name?></a>
                            <p class="mb-3">Lorem, ipsum dolor sit amet consectetur adipisicing elit. Eius libero soluta impedit eligendi? Quibusdam, laudantium.</p>
                            <a href="/single/post?c=<?=$postsslug?>&t=0" class="btn p-0">Дэлгэрэнгүй <i class="fa fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            <?php    }
            ?>
        </div>
    </div>
</div>
<?php
} else {
    require ROOT . "/pages/404.php";
}
require ROOT . "/pages/footer.php"; ?>