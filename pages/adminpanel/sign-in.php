<?php
$username = trim(post('username', 100));
$password = trim(post('password', 100));
$errors = [];

if (sizeof($errors) > 0) {
    $_SESSION['errors'] = $errors;
    redirect('/adminpanel/login');
}

_selectRow(
    "SELECT id, name, pass, role FROM adminusers where phone=? and tuluv = 1",
    's',
    [$username],
    $user_id,
    $user_name,
    $user_password,
    $user_role
);
if (!empty($user_id)) {
    if (password_verify($password, $user_password)) {
        $user_agent = $_SERVER['HTTP_USER_AGENT'];
        $success = _exec(
            "insert into loginlog(user, hezee, device, ip) VALUES(?, ?, ?, ?)",
            'isss',
            [$user_id, ognoo(), $user_agent, getIpAddress()],
            $count
        );

        $_SESSION['user_id'] = $user_id;
        $_SESSION['user_name'] = $user_name;
        $_SESSION['user_role'] = $user_role;
        $_SESSION['errors'] = "";
        redirect('/adminpanel');
    } {
        $_SESSION['errors'] = ["Таны нэвтрэх нэр эсвэл нууц үг буруу байна"];
        redirect('/adminpanel/login');
    }
} else {
    $_SESSION['errors'] = ["Таны нэвтрэх нэр эсвэл нууц үг буруу байна"];
    redirect('/adminpanel/login');
}
