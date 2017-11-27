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
//= require sweetalert2
//= require sweet-alert2-rails
//= require sweetalert
//= require turbolinks
//= require_tree .

function initVue(){
    
    if (document.querySelector("#logincoach")) {
        new Vue({
            el: "#logincoach",
            data:{
                user: "",
                password: ""
            },
            methods:{
                ingresar: function(){
                    console.log("intento login");
                    var url = "/login-coach-back";
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
                        window.location = "/entrenador?uid="+logged_user.id;
                    },error=>{
                        console.log(error)
                    });

                }
            }
        });
    }
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
                        window.location = "/client?uid="+logged_user.id;
                    },error=>{
                        console.log(error)
                    });

                }
            }
        });
    }
    if (document.querySelector("#client")) {
        new Vue({
            el: "#client",
            data:{
                user:{},
                comment: '',
                valoracion:0,
                coach:0
            },
            created: function(){
                this.setUserData();
            },
            methods:{
                setUserData: function(){
                    this.user = Lockr.get('user');
                    console.log(JSON.stringify(this.user));
                    var fullname = this.user.name + " "+this.user.last_name;
                    $("#nombre").html(fullname);
                },
                valorar: function(){
                    console.log(this.comment);
                    this.coach = $("#coach_id").val();
                    console.log($("#coach_id").val());
                }
            }
        });
    }
    if (document.querySelector("#navigation")) {
        new Vue({
            el: "#navigation",
            data:{
                user:{}
            },
            created: function(){
                this.setUserData();
            },
            methods:{
                setUserData: function(){
                    this.user = Lockr.get('user');
                    console.log(JSON.stringify(this.user));
                    var fullname = this.user.name + " "+this.user.last_name;
                    $("#nombre").html(fullname);
                    var link = "/client?uid="+this.user.id;
                    $("#home_link").attr("href", link);
                    var link2 = "/client?uid="+this.user.id+"/edit/";
                    $("#edit_profile").attr("href", link2);
                    
                }
            }
        });
    }
    if (document.querySelector("#calculadora")) {
        new Vue({
            el: "#calculadora",
            data:{
                peso: '',
                sexo: '',
                altura: '',
                factor: '',
                edad: '',
                val_factor: 0,
                show_result: false,
                resultados: 0
            },
            methods:{
               getData: function(){
                
                    var f = parseInt(this.factor);
                    console.log(f);
                    switch(f){
                        case 1:
                            this.val_factor = 1.2;
                            break;
                        case 2: 
                            this.val_factor = 1.375;
                            break;
                        case 3:
                            this.val_factor = 1.55;
                            break;
                        case 4: 
                            this.val_factor = 1.725;
                            break;
                        case 5:
                            this.val_factor = 1.9;
                            break;
                    }
                     preloader = new $.materialPreloader({
                            position: 'top',
                            height: '5px',
                            col_1: '#159756',
                            col_2: '#da4733',
                            col_3: '#3b78e7',
                            col_4: '#fdba2c',
                            fadeIn: 200,
                            fadeOut: 200
                        });
                     if (empty(this.altura) || empty(this.sexo)|| empty(this.peso) || empty(this.factor) || empty(this.edad)) {
                        sweetAlert("Por favor rellene todos los campos");
                     }else{
                         preloader.on();
                     }
 
                
    // Mujeres [655 + (9.6 x Peso kg) ] + [ (1.8 x Altura cm) – (4.7 x Edad)] x Factor actividad  
    // Hombres [66 + (13.7 x Peso kg) ] + [ (5 x Altura cm) – (6.8 x Edad)] x Factor actividad
                    if (this.sexo==1) {
                        console.log(this.val_factor);
                        var resultado = ((655 + (9.6 * parseFloat(this.peso)) ) + (1.8 * parseFloat(this.altura) ) - (4.7 * parseInt(this.edad)) ) * this.val_factor;
                        console.log(resultado);
                        this.resultados = resultado;
                        this.show_result = true;
                        preloader.off();
                    }
                    if (this.sexo==2) {
                        console.log(this.val_factor);
                        var resultado = ((666 + (13.7 * parseFloat(this.peso)) ) + (5 * parseFloat(this.altura) ) - (6.8 * parseInt(this.edad)) ) * this.val_factor;
                        console.log(resultado);
                        this.resultados = resultado;
                        this.show_result = true;
                        preloader.off();
                    }

               }
            }
        });
    }


    if (document.querySelector("#nueva_rutina")) {
        new Vue({
            el:"#nueva_rutina",
            data: {
                ejS:[],
                ejI:[],
                ejA:[],
                ejC:[]
            },
            created: function(){
                this.setExercises();
            },
            methods: {
                setExercises: function(){
                    var sup = $("#superior").data("options");
                    this.ejS = sup;
                    var inf = $("#inferior").data("options");
                    var ab = $("#abdomen").data("options");
                    var car = $("#cardio").data("options");
                    this.ejA = ab;
                    this.ejC = car;
                    this.ejI = inf;
                    
                }
            }
        });
    }
}


function empty(e) {
    switch (e) {
      case "":
      case 0:
      case "0":
      case null:
      case false:
      case typeof this == "undefined":
        return true;
      default:
        return false;
    }
  }
ready = function(){
    initVue();
    var options = {
        max_value: 5,
        step_size: 1,
        initial_value: 3,
        selected_symbol_type: 'fontawesome_star', // Must be a key from symbols
        cursor: 'default',
        readonly: false,
        change_once: false, // Determines if the rating can only be set once
        
    }
    
    $(".rating").rate(options);
    if (document.querySelector("#froala-edito")) {
        $('textarea#froala-editor').froalaEditor();
    }
      
}

$(document).on('turbolinks:load',ready);