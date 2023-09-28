// Table of formData
        $(document).ready(function () {
            let data = JSON.parse(localStorage.getItem("formData")) || [];

            function buildTable(data) {
                for (let i = 0; i < data.length; i++) {
                    let row = `
                    <tr>
                        <td align="center" height="25" width="50">${i + 1}</td>
                        <td height="25" width="50">${data[i].name}</td>
                        <td align="center" height="25" width="50">${data[i].pnumber}</td>
                        <td height="25" width="50">${data[i].email}</td>
                        <td align="center" height="25" width="50">${data[i].day}</td>
                        <td align="center" height="25" width="50">${data[i].month}</td>
                        <td align="center" height="25" width="50">${data[i].year}</td>
                        <td height="25" width="50">${data[i].nation}</td>
                        <td height="25" width="50">${data[i].course}</td>
                        <td height="25" width="50">
                            <a class=\"edit\" href=\"${i}\">Edit Data</a> |
                            <a class=\"delete\" href=\"${i}\">Delete Data</a>
                        </td>
                    </tr>
                    `;
                    $('#formData').append(row);
                }

            }
            buildTable(data);



// edit function put the index
            $('.edit').click(function (e) {
                e.preventDefault();
                let index = $(this).attr('href');
                let data = getCrudData();
                document.getElementById('name').value = data[index].name;
                document.getElementById('pnumber').value = data[index].pnumber;
                document.getElementById('email').value = data[index].email;
                document.getElementById('day').value = data[index].day;
                document.getElementById('month').value = data[index].month;
                document.getElementById('year').value = data[index].year;
                document.getElementById('nation').value = data[index].nation;
                document.getElementById('course').value = data[index].course;

                $('#updateForm').submit(function (e) {
                    data[index].name = $('#name').val();
                    data[index].pnumber = $('#pnumber').val();
                    data[index].email = $('#email').val();
                    data[index].day = $('#day').val();
                    data[index].month = $('#month').val();
                    data[index].year = $('#year').val();
                    data[index].nation = $('#nation').val();
                    data[index].course = $('#course').val();

                    localStorage.setItem('formData', JSON.stringify(data));
                    e.preventDefault();
                    location.reload();
                })
            })
            function getCrudData() {
                let data = JSON.parse(localStorage.getItem("formData"));
                return data;
            }
// delete function

            $('.delete').click(function (e) {

                let conf = confirm("Are you sure want to delete this data?");
                let index = $(this).attr('href');

                if (conf === true) {
                    data.splice(index, 1);
                    localStorage.setItem('formData', JSON.stringify(data));
                    $(this).removeAttr("href");
                    e.preventDefault();
                    location.reload();
                }
                else {
                    e.preventDefault();
                }

            });


        });


// add function 


$(document).ready(function(){

    $('#apaId').submit(function(e){
        let name = $('#name2').val();
        let pnumber = $('#pnumber2').val();
        let email = $('#email2').val();
        let day = $('#day2').val();
        let month = $('#month2').val();
        let year = $('#year2').val();
        let nation = $('#nation2').val();
        let course = $('#course2').val();

        let formData = JSON.parse(localStorage.getItem('formData')) || [];

        let exist = formData.length && 
        JSON.parse(localStorage.getItem('formData')).some(data => 
            data.email.toLowerCase() == email.toLowerCase()    
        );

        if(!exist){
            formData.unshift({ name,pnumber,email,day,month,year,nation,course });
            localStorage.setItem('formData', JSON.stringify(formData));
            location.reload();
            e.preventDefault();
        }
        else{
            alert("Oh NO Data Already in Local Storage!!");
            e.preventDefault();
        }
        
    });
})
