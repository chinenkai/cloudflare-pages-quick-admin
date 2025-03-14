import VueRouter from 'VueRouter'

import store from './store.js'

/*
import ext from './extPage.vue'
*/

// 扩展页面放到下面这个对象里
var extMap = {
    // ext: ext,
}

// 后台配置
var $CONFIG = {
    app_name: 'HiCode',
    app_ver: '4.0',
    slogan: '高性能 / 快速 / 简洁',
    descriptions: '基于Vue + TDesign 的后台前端解决方案。',
    api: {
        login: '../admin/manager/login',
        menus: '../admin/manager/menus',
    }
};

function bootstrap(extMap, menusApi) {
    var router = store.funs.initVueRouter();
    var token = store.funs.cache('token');

    // 没有token
    if (!token) {

        store.funs.initVue(router,$CONFIG);

        // 未登录，跳转到登录页
        if (router.currentRoute.value.path != '/login') {
            router.replace('/login');
        }

        return;
    }

    // 有token的话，尝试获取后端的菜单数据
    store.funs.initMenusAndUser(menusApi, extMap, router, function(result) {
        
        store.funs.initVue(router,$CONFIG);
    });
}

bootstrap(extMap, $CONFIG.api.menus);