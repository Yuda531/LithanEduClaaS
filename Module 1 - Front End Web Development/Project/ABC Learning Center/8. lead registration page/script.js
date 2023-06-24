
$(document).ready(function(){

    $('#apaId').submit(function(e){
        let name = $('#name').val();
        let pnumber = $('#pnumber').val();
        let email = $('#email').val();
        let day = $('#day').val();
        let month = $('#month').val();
        let year = $('#year').val();
        let nation = $('#nation').val();
        let course = $('#course').val();

        let formData = JSON.parse(localStorage.getItem('formData')) || [];

        let exist = formData.length && 
        JSON.parse(localStorage.getItem('formData')).some(data => 
            data.email.toLowerCase() == email.toLowerCase()    
        );

        if(!exist){
            formData.unshift({ name,pnumber,email,day,month,year,nation,course });
            localStorage.setItem('formData', JSON.stringify(formData));
            window.open("../9. thankyou/thankyou.html");
            e.preventDefault();
        }
        else{
            alert("Ooopppssss... You Already Created Account!!");
            e.preventDefault();
        }
        
    });
})




















