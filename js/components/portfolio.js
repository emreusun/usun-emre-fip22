export default {

    props: ['portfolios'],
    
    // define data
    data: function() {
        return {
            fff: this.portfolios,
            modalItem: [],
            modalShow: false
        }
    },
    methods: {
       
        // close modal
        closeModal() {
            this.modalShow = false
        },
        
        // to show modal and define the data to go to the model page
        showModal(modItem) {
            this.modalItem = modItem
            this.modalShow = true;
        },
        
        // filter portfolio by category
        filter(category) {
            // if category is equal to all, then show all portfolios
            if (category == 'all') {
                this.fff = this.portfolios.filter(value => value.id !== '');
            } else {
                
                // else if category is not equal to all, then filter the portfolio by category
                this.fff = this.portfolios.filter(value => value.categories === category)
            }
        }
    },
    template: `
    <div class="portfolio-modal">
    <div v-if="modalShow"  class="modal shadow" :style="!modalShow === true ? 'display:none' :''">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-body">
                  <div v-if="modalItem.is_video =='0' && modalItem.path != ''" class="padding-bot-4">
                    <img :src="'./images/'+modalItem.path" style="width:100%" alt="">
                  </div>
                  <div v-if="modalItem.is_video =='0' && modalItem.path2 != ''" class="padding-bot-4">
                    <img :src="'./images/'+modalItem.path2" style="width:100%" alt="">
                  </div>
                  <div v-if="modalItem.is_video =='0' && modalItem.path3 != ''" class="padding-bot-4">
                    <img :src="'./images/'+modalItem.path3" style="width:100%" alt="">
                  </div>
                  <div v-if="modalItem.is_video =='1'">
                  <iframe style="width:100%" height="315" :src="'https://www.youtube.com/embed/'+modalItem.video_link" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                  </div>
                  <h2 class="text-center">{{modalItem.title}}</h2>
                  <p>
                    {{ modalItem.description }}
                  </p>
                </div>
                <div class="modal-footer">
                  <button type="button" @click="closeModal" class="btn button-blue">Close</button>
                </div>
              </div>
            </div>
          </div>
            <h1 class="text-center padding-top-2 padding-bot-2">My Portfolio</h1>
            <div class="flex-box gap-3 flexcontent-center flexbox-wrap padding-bot-4">
           
                <button class="btn button-blue hover-button" id="all" @click="filter('all')">All</button>
                <button class="btn button-blue hover-button" id="ui-ux" @click="filter('UX/UI')">UX/UI</button>
                <button class="btn button-blue hover-button" id="front-end"@click="filter('Front-End')">Front-End</button>
                <button class="btn button-blue hover-button" id="motion" @click="filter('Motion')">Motion</button>
                <button class="btn button-blue hover-button" id="video" @click="filter('Video')">Video</button>
            </div>
            <div class="flex-box flexcontent-center flexbox-wrap gapadding-5 padding-topadding-5 padding-bot-5">
                <div v-for="item in fff"> 
                    <a type="button" :id="'itemmodal'+item.id">
                        <img @click="showModal(item)" :src="'./images/'+item.path" height="250" width="380" alt="">
                    </a>
                </div>
            </div>
        </div>
        
    `
}