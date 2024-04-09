//  toggle menu
const toggleIcon = document.querySelector(".toggleIcon");
const toggleMenuBtn = document.querySelector(".toggleMenuBtn");
const navbar = document.querySelector(".navbar");
const navigation = document.querySelector(".navigation");

toggleMenuBtn.onclick = () => {
  if(navbar.offsetWidth > 100){
    toggleIcon.classList.remove("fa-arrow-left");
    toggleIcon.classList.add("fa-arrow-right");
    navigation.style.gridTemplateColumns = "55px 1fr";
  }else{
    toggleIcon.classList.add("fa-arrow-left");
    toggleIcon.classList.remove("fa-arrow-right");
    navigation.style.gridTemplateColumns = "220px 1fr";
  }
}