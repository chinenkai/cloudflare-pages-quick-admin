import backend from "../common/backend.js"
import tableColumn from "./setting/tableColumn.js"
import batchSetting from "./setting/batchSetting.js"
import tableAction from "./setting/tableAction.js"
import formFields from "./setting/formFields.js"

class attachment extends backend {
    constructor(context, action) {
        super(context, 'attachment', action);
        this._setting = {
            tableColumn: tableColumn,
            batchSetting: batchSetting,
            tableAction: tableAction,
            formFields: formFields,
        }
    }
    async _table_get_data(data) {

        for (var i = 0; i < data.length; i++) {

            let item = data[i];

            if (!item['url']) {
                continue;
            }

            item['url'] = JSON.parse(item['url']);

            let list = []

            for (var j = 0; j < item['url'].length; j++) {
                let info = item['url'][j];

                list.push(info['url']);
            }

            data[i]['url'] = list.join(',');
        }
        return data;
    }

    async _action_delete_data(data) {

        const cur_model = that.model(that._controller);

        const item = await cur_model.one({
            id: data,
        });

        if (item && item['url']) {

            item['url'] = JSON.parse(item['url']);

            for (var j = 0; j < item['url'].length; j++) {
                let info = item['url'][j];
                let key = info['url'].replace(that._ctx.env.R2_BUCKET_DOMAIN, '');

                try {
                    await that._bu.delete(key);
                } catch (error) {
                    that.exit_json(0, '删除' + key + '文件时失败');
                }

            }
        }

        return data;
    }


}
export default attachment
export async function onRequest(context) {
    return await new attachment(context, 'init').init();
}