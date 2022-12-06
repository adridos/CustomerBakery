class Header extends HTMLElement {
    constructor() {
        super();
    }

    connectedCallback() {
        this.innerHTML = `
        <style>
            nav {
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color:  #0a0a23;
            }
            .home{
                text-decoration: none;
              }
          
          a {
            font-size:30px;
            margin: 0 25px;
            color: white;
            text-decoration: none;
          }

          .header-container{
            display: flex;
            justify-content: space-between;
            align-items: center;
          }
          .nav-container{
            display: flex;
            justify-content: flex-end;
          }
          .dropbtn:hover{
            border-bottom: 3px solid white;
          }

        </style>

    <header>
    <div class="header-container">
    <div class="home"><a href="Index.jsp">The Bakery</a></div>
        <div class="nav-container">
            <ul>
                <li><a href="About.jsp" class= "dropbtn">About</a></li>
            </ul>
        </div>
    </div>
</header>
      `;
    }
}

customElements.define('header-component', Header);