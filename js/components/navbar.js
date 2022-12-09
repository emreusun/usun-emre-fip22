export default {
    props: ["data"],
    //değişkenleri tanımladım degişkene gore actıve ozellıgı tanımladım
    data: function() {
        return {
            active: this.data,
            hamburgerMenu: false,
        };
    },
    methods: {
        //hamburger menuyu aktıf veya pasif etmesı ıcın bır fonksıyon yazdım
        hamburgerActive() {
            this.hamburgerMenu = !this.hamburgerMenu
        }
    },
    template: `
    <nav class="navbar">
    <div class="container-navbar">
        <a class="navbar-brand" href="#"><img src="./images/1.svg" height="100" width="100" alt=""></a>
        <div class="navbar-menu" :class="hamburgerMenu == true ? 'show-menu' : ''">
        <ul class="navbar-nav">
            <li>
            <a v-if="active == 'about'" class="nav-link hover-text active" href="#">About</a>
            <a v-else class="nav-link  hover-text" href="index.html">About</a>
            </li>
            <li>
            <a v-if="active == 'portfolio'" class="nav-link hover-text active" href="#">Portfolio</a>
            <a v-else class="nav-link hover-text " href="portfolio.html">Portfolio</a>
            </li>
            <li>
            <a v-if="active == 'contact'" class="nav-link  hover-text active" href="#">Contact</a>
            <a v-else class="nav-link hover-text " href="contact.html">Contact</a>
            </li>
            <li>
            <a class="nav-link " href="https://drive.google.com/file/d/1CJEuDxUNJERL3aHtJJGK3rxqo8VJXiks/view?usp=sharing">Resume</a>
            </li>
          
        </ul>
        </div>
        <div @click="hamburgerActive()" class="navbar-hamburger"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" style="width:30px; heigth:30px">
        <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
      </svg>
      </div>
    </div>
    </nav>
    `,
};