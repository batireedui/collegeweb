<?php
require ROOT . "/pages/start.php"; ?>

<?php
require ROOT . "/pages/header.php"; ?>
<!-- Carousel Start -->
<div class="header-carousel owl-carousel">
    <div class="header-carousel-item bg-primary">
        <div class="carousel-caption">
            <div class="container">
                <div class="row g-4 align-items-center">
                    <div class="col-lg-7 animated fadeInLeft">
                        <div class="text-sm-center text-md-start">
                            <h4 class="text-white text-uppercase fw-bold mb-4">Бидний</h4>
                            <h1 class="display-1 text-white mb-4">АЛСЫН ХАРАА </h1>
                            <p class="mb-1 fs-3">Олон улсын жишигт нийцсэн, үндэсний тэргүүлэгч сургалт, үйлдвэрлэлийн байгууллага болох </p>
                            <!--
                            <div class="d-flex justify-content-center justify-content-md-start flex-shrink-0 mb-4">
                                <a class="btn btn-light rounded-pill py-3 px-4 px-md-5 me-2" href="#"><i class="fas fa-play-circle me-2"></i> Watch Video</a>
                                <a class="btn btn-dark rounded-pill py-3 px-4 px-md-5 ms-2" href="#">Learn More</a>
                            </div>
                            -->
                        </div>
                    </div>
                    <div class="col-lg-5 animated fadeInRight">
                        <div class="calrousel-img" style="object-fit: cover;">
                            <img src="/images/goal.png" class="img-fluid w-100" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="header-carousel-item bg-primary">
        <div class="carousel-caption">
            <div class="container">
                <div class="row gy-4 gy-lg-0 gx-0 gx-lg-5 align-items-center">
                    <div class="col-lg-5 animated fadeInLeft">
                        <div class="calrousel-img">
                            <img src="/images/mission.png" class="img-fluid w-100" alt="">
                        </div>
                    </div>
                    <div class="col-lg-7 animated fadeInRight">
                        <div class="text-sm-center text-md-end">
                            <h4 class="text-white text-uppercase fw-bold mb-4">Бидний</h4>
                            <h1 class="display-1 text-white mb-4">ЭРХЭМ ЗОРИЛГО</h1>
                            <p class="mb-1 fs-3">Бид хөдөлмөрийн зах зээлийн эрэлтэд нийцсэн, өрсөлдөх чадвартай, мэргэжлийн өндөр ёс зүй ур чадвар бүхий үндэсний мэргэжилтэй ажилтанг бэлтгэнэ.
                            </p>
                            <!--
                            <div class="d-flex justify-content-center justify-content-md-end flex-shrink-0 mb-4">
                                <a class="btn btn-light rounded-pill py-3 px-4 px-md-5 me-2" href="#"><i class="fas fa-play-circle me-2"></i> Watch Video</a>
                                <a class="btn btn-dark rounded-pill py-3 px-4 px-md-5 ms-2" href="#">Learn More</a>
                            </div>
                            -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Carousel End -->

<!-- ЗЭЭЛИЙН БҮТЭЭГДЭХҮҮНt -->
<div class="container-fluid service py-5">
    <div class="container py-5">
        <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
            <h1 class="display-4 mb-4">СУРГАЛТ</h1>
            <p class="mb-0">Бид дараах зээлийн бүтээгдэхүүн үйлчилгээг санал болгож байна.</p>
        </div>
        <div class="row g-4 justify-content-center">
            <?php
            _selectNoParam(
                $st,
                $cc,
                "SELECT posts.id, posts.name$lang, posts.body$lang, posts.image, posts.ognoo, slug FROM posts INNER JOIN post_cate ON posts.id = post_cate.post_id WHERE post_cate.cate_id='3' LIMIT 4",
                $pid,
                $pname,
                $pbody,
                $pimage,
                $pognoo,
                $slug
            );
            while (_fetch($st)) {
                $pimage == "" ? $iurl = "/images/blog-2.png" : $iurl = $pimage;
            ?>
                <div class="col-md-6 col-lg-6 col-xl-3 wow fadeInUp" data-wow-delay="0.2s">
                    <div class="service-item">
                        <div class="service-img">
                            <img src="<?= $iurl ?>" class="img-fluid rounded-top w-100" alt="">
                            <div class="service-icon p-3">
                                <i class="fa fa-users fa-2x"></i>
                            </div>
                        </div>
                        <div class="service-content p-4">
                            <div class="service-content-inner">
                                <a href="#" class="d-inline-block h4 mb-4"><?= $pname ?></a>
                                <p class="mb-4">Та <?= $pname ?>ийн тухай мэдээлэл авах бол дэлгэрэнгүй дарна уу!</p>
                                <a class="btn btn-primary rounded-pill py-2 px-4" href="/single/post?c=<?= $slug ?>&t=0">Дэлгэрэнгүй</a>
                            </div>
                        </div>
                    </div>
                </div>
            <?php }
            ?>
        </div>
    </div>
</div>
<!-- Service End -->

<!-- FAQs Start -->
<div class="container-fluid faq-section bg-light py-5">
    <div class="container py-5">
        <div class="row g-5 align-items-center">
            <div class="col-xl-6 wow fadeInLeft" data-wow-delay="0.2s">
                <div class="h-100">
                    <div class="mb-5">
                        <h4 class="text-primary">Танд тусламж хэрэгтэй байна уу?</h4>
                        <h1 class="display-4 mb-0">Түгээмэл асуултууд ...</h1>
                    </div>
                    <div class="accordion" id="accordion">
                        <?php
                        _selectNoParam(
                            $stCa,
                            $coCA,
                            "SELECT id, name, url FROM links WHERE turul = '1'",
                            $id,
                            $asuult,
                            $hariult
                        );
                        while (_fetch($stCa)) { ?>
                            <div class="accordion-item">
                                <h2 class="accordion-header" id="headingOne<?= $id ?>">
                                    <button class="accordion-button border-0" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne<?= $id ?>" aria-expanded="true" aria-controls="collapseOne<?= $id ?>">
                                        Асуулт: <?= $asuult ?>
                                    </button>
                                </h2>
                                <div id="collapseOne<?= $id ?>" class="accordion-collapse collapse" aria-labelledby="headingOne<?= $id ?>" data-bs-parent="#accordion">
                                    <div class="accordion-body rounded">
                                        Хариулт: <?= $hariult ?>
                                    </div>
                                </div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <div class="col-xl-6 wow fadeInRight" data-wow-delay="0.4s">
                <img src="/images/carousel-2.png" class="img-fluid w-100" alt="">
            </div>
        </div>
    </div>
</div>
<!-- FAQs End -->

<!-- МЭДЭЭ -->
<div class="container-fluid blog py-5">
    <div class="container py-5">
        <div class="text-center mx-auto pb-5 wow fadeInUp" data-wow-delay="0.2s" style="max-width: 800px;">
            <h1 class="display-4 mb-4">МЭДЭЭ, МЭДЭЭЛЭЛ</h1>
            <p class="mb-0"></p>
        </div>
        <div class="row g-4 justify-content-center">
            <?php
            _selectNoParam(
                $st,
                $cc,
                "SELECT posts.id, posts.name$lang, posts.image, posts.ognoo, slug FROM posts INNER JOIN post_cate ON posts.id = post_cate.post_id WHERE post_cate.cate_id='4' LIMIT 3",
                $pid,
                $pname,
                $pimage,
                $pognoo,
                $slug
            );
            while (_fetch($st)) {
                $pimage == "" ? $iurl = "/images/blog-2.png" : $iurl = $pimage;
                $pbody  = strip_tags($pbody);
            ?>
                <div class="col-lg-6 col-xl-4 wow fadeInUp" data-wow-delay="0.2s">
                    <a href="/single/post?c=<?= $slug ?>&t=0" class="btn p-0">
                        <div class="blog-item">
                            <div class="blog-img">
                                <img src="<?= $pimage ?>" class="img-fluid rounded-top w-100" alt="">
                                <!--
                        <div class="blog-categiry py-2 px-4">
                            <span>Business</span>
                        </div>
                        -->
                            </div>
                            <div class="blog-content p-4">
                                <div class="blog-comment d-flex justify-content-between mb-3">
                                    <div class="small"><span class="fa fa-calendar text-primary"></span> <?= _format_date($pognoo) ?></div>
                                </div>
                                <span class="h4 d-inline-block mb-3"><?= $pname ?></span>
                            </div>
                        </div>
                    </a>
                </div>
            <?php } ?>
        </div>
    </div>
</div>
<!-- МЭДЭЭ -->
<?php
require ROOT . "/pages/footer.php"; ?>