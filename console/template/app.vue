<template>
    <div id="app" class="admin-app">
        <router-view></router-view>
    </div>
</template>
<script>
export default {
    methods: {},
}
</script>
<style>
.admin-app {
    display: flex;
    flex-flow: column;
}

.admin-app .admin-main .t-card.t-card--bordered {
    border-radius: 4px;
    border: 1px solid #EBEEF5;
    background-color: #FFF;
}
/*针对连级菜单，不限制宽度*/
html body .t-popup .t-cascader__menu{
    min-width: 148px;
    width: auto;
}
</style>