/*=============== SHOW MENU ===============*/
const showMenu = (toggleId, navId) =>{
    const toggle = document.getElementById(toggleId),
          nav = document.getElementById(navId)
 
    toggle.addEventListener('click', () =>{
        // Add show-menu class to nav menu
        nav.classList.toggle('show-menu')
 
        // Add show-icon to show and hide the menu icon
        toggle.classList.toggle('show-icon')
    })
 }
 
 showMenu('nav-toggle','nav-menu')


 //show hide faq aswer
const faqs =document.querySelectorAll('.faq')

faqs.forEach(faq =>{
    faq.addEventListener('click', () =>{
        faq.classList.toggle('open');

        //change icon
        const icon = faq.querySelector('.faq_icon i');
        if(icon.className === 'uil uil-plus'){
            icon.className = "uil uil-minus"
        }else{
            icon.className = "uil uil-plus";
        }
    })
})