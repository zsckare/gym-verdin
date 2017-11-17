// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap
//= require vue
//= require axios
//= require turbolinks
//= require_tree .

function initVue(){
    
    if (document.querySelector("#loginclient")) {
        new Vue({
            el: "#loginclient",
            data:{
                user: "",
                password: ""
            },
            methods:{
                ingresar: function(){
                    console.log("intento login");
                    var url = "/login-c";
                    var datos = {
                        user: this.user,
                        password: this.password
                    };
                    axios.post(url,datos).then(response=>{
                        console.log(response.data);
                        var d = response.data;
                        var logged_user = {
                            id: d.id,
                            name: d.name,
                            last_name: d.lastname,
                            coach: d.coach_id
                        };
                        Lockr.set('user',logged_user);
                        window.location = "/client";
                    },error=>{
                        console.log(error)
                    });

                }
            }
        });
    }
}



ready = function(){
    initVue();
}

$(document).on('turbolinks:load',ready);