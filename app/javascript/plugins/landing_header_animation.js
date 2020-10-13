const logoHeader = document.querySelector(".landing-header");
const landingHeaderAnimation = () => {
  console.log(logoHeader);
    window.addEventListener("scroll",(e)=> {
      if (window.pageYOffset >= 10) {
        logoHeader.style.backgroundColor = "red";
      } else if (window.pageYOffset < 10) {
        logoHeader.style.backgroundColor = "blue";
      }
    });

};

// export { landingHeaderAnimation };
