/* global Vue axios */ //> from vue.html
const $ = sel => document.querySelector(sel)
const GET = (url) => axios.get('/browse'+url)
const POST = (cmd,data) => axios.post('/browse'+cmd,data)

const goods = Vue.createApp ({

    data() {
      return {
        list: []
      
      }
    },

methods: {

        search: ({target:{value:v}}) => goods.fetch(v && '&$search='+v),

        async fetch (etc='') {
            const {data} = await GET(`/ListOfGoods`)
            goods.list = data.value
        }
    }
}).mount("#app")

goods.fetch() // initially fill list of Goods


