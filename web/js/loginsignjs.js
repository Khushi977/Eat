const signup=document.querySelector('.t-signup');
const login=document.querySelector('.t-login');
const addClass= document.querySelector('.site')
signup.addEventListener('click', function(){
    addClass.className = 'site signup-show';
})
login.addEventListener('click', function(){
    addClass.className = 'site login-show';
})
