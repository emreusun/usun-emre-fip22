//import all vue components
// get dataminer.js and calling getPortfolioData function
//  show all portfolp pieces on load "window.onload"
// used stackoverflow reference and change a little bit "https://stackoverflow.com/questions/43224222/window-onload-and-run-after-x-seconds"
window.onload = function() {
    setTimeout(()=> {
   document.getElementById("all").click();
 }
 ,300);
   
};
import { getPortfolioData } from "./components/dataMiner.js";
import portfolio from "./components/portfolio.js";
import about from "./components/about.js";
import contact from "./components/contact.js";
import footer_area from "./components/footer.js";
import navbar from "./components/navbar.js";

new Vue({
    created: function() {
        //fetch portfolio data
        getPortfolioData(null, (data) => {
            this.developProjects = data;
        });
    },
    //vue components are here
    components: {
        portfolio,
        about,
        contact,
        footer_area,
        navbar,
    },
    // define data
    data: {
        developProjects: [],
    },
    el: "#app",
});