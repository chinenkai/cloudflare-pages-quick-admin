export default [{
        widget: "input",
        label: "ID",
        name: "id",
        disabled: true,
    },
    {
        widget: "input",
        label: "管理员ID",
        name: "uid",
        // disabled: true,
    },
    {
        widget: "input",
        label: "标题",
        name: "name",
    },
    {
        widget: "input",
        label: "类型",
        name: "type",
    },
    // {
    //     type: "input",
    //     label: "链接地址",
    //     name: "url",
    // },
    {
        'type': 'upload',
        'label': '链接地址',
        'name': 'url',
        'action': '../admin/attachment/upload/?fileKey=url',
        'theme': 'file-input',
        'placeholder': '请选择文件',
        // 'defaultValue': [{
        //     'name': '1.png',
        //     'url': 'http://www.aaa.xxx/1.png'
        // }, ],
    },
    // {
    //     'type': 'upload',
    //     'label': '链接地址',
    //     'name': 'url',
    //     'action': '../admin/attachment/upload/?fileKey=url',
    //     'theme': 'image',
    //     'placeholder': '请选择图片',
    //     'multiple': true,
    //     'defaultValue': [
    //         {
    //             'name': 'bg.jpg',
    //             'url':'http://2024.h5pro.cn/upload/demo/bg.20240608.jpg'
    //         },
    //     ],
    // },
    {
        widget: "input",
        label: "大小(KB)",
        name: "size",
    },
    {
        widget: "input",
        label: "状态",
        name: "status",
    },
];