/**
 * 首页JavaScript
 *
 * @author HenryYan
 */
$(function () {

    // 修改密码
    $('#changePwd').click(function () {
        alert('我不会让你修改的，否则别人怎么登陆！！！');
    });

    // 退出系统
    $('#loginOut').click(function () {
        if (confirm('系统提示，您确定要退出本次登录吗?')) {
            location.href = ctx + '/user/logout';
        }
    });

    var el = $('.nav a[href^="' + reqUri + '"]').parent();
    if (el.parent().hasClass('dropdown-menu')) {
        el.parent().parent().addClass('active');
    } else {
        el.addClass('active');
    }
});