
function bindNavClickEvents() {
    var navItems = document.querySelectorAll('.header-nav li');
    navItems.forEach(function (item) {
        item.addEventListener('click', function () {
            // 移除所有其他项的 'on' 类
            navItems.forEach(function (i) {
                i.classList.remove('on');
            });
            // 添加 'on' 类到当前点击的项
            this.classList.add('on');
        });
    });
}
// 确保每次页面加载完成后调用
document.addEventListener('DOMContentLoaded', bindNavClickEvents);
    const navToggle = document.getElementById('nav-toggle');
    const nav = document.getElementById('nav');
    const navLinks = nav.querySelectorAll('.nav-list a');

    // 点击导航按钮切换导航显示
    navToggle.addEventListener('click', function () {
        nav.classList.toggle('active');
    });

    // 点击导航链接时隐藏导航
    navLinks.forEach(link => {
        link.addEventListener('click', function () {
            nav.classList.remove('active'); // 隐藏导航
        });
    });

    // 监听外部点击隐藏导航
    document.addEventListener('click', function (event) {
        if (!nav.contains(event.target) && !navToggle.contains(event.target)) {
            nav.classList.remove('active'); // 隐藏导航
        }
    });
