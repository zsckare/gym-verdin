# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category::create(id: 1, name: "PARTE SUPERIOR")
Category::create(id: 2, name: "PARTE INFERIOR")
Category::create(id: 3, name: "CARDIO")
Category::create(id: 4, name: "ABDOMEN")

Exercise::create(name: "LAGARTIJAS", category_id: 1)
Exercise::create(name: "CURL DE BICEP", category_id: 1)
Exercise::create(name: "CURL MARTILLO", category_id: 1)
Exercise::create(name: "TRICEP DIPS", category_id: 1)
Exercise::create(name: "REMO DE PIE", category_id: 1)
Exercise::create(name: "REVERSE FLY", category_id: 1)
Exercise::create(name: "ELEVACION LATERAL", category_id: 1)
Exercise::create(name: "PRESS DE HOMBRO", category_id: 1)
Exercise::create(name: "CLEAN AND PRESS", category_id: 1)
Exercise::create(name: "PRESS DE PECHO", category_id: 1)
Exercise::create(name: "RENEGADOS KETLEBEN", category_id: 1)
Exercise::create(name: "SUMO CON KETLEBEN", category_id: 1)


Exercise::create(name: "SENTADILLA PULSANTE", category_id: 2)
Exercise::create(name: "SENTADILLA BAILARINA", category_id: 2)
Exercise::create(name: "SENTADILLA DE PARED", category_id: 2)
Exercise::create(name: "DESPLANTE EN REVERSA", category_id: 2)
Exercise::create(name: "DESPLANTE CAMINANDO", category_id: 2)
Exercise::create(name: "PESO MUERTO", category_id: 2)
Exercise::create(name: "KETLEBELL SWINGS", category_id: 2)
Exercise::create(name: "PATADA DE MULA", category_id: 2)
Exercise::create(name: "SENTADILLA 1 PIERNA", category_id: 2)
Exercise::create(name: "PATADAS ATRAS", category_id: 2)
Exercise::create(name: "SALTOS DE TRONCO", category_id: 2)

Exercise::create(name: "BURPEES", category_id: 3)
Exercise::create(name: "ESCALADORES", category_id: 3)
Exercise::create(name: "JUMPING JACKS", category_id: 3)
Exercise::create(name: "PATADAS FRONTALES", category_id: 3)
Exercise::create(name: "PLANCHAS JACKS", category_id: 3)
Exercise::create(name: "TROTE RODILLAS ALTAS", category_id: 3)
Exercise::create(name: "DESPLANTE LATERAL", category_id: 3)
Exercise::create(name: "DESPLANTE CON SALTO", category_id: 3)
Exercise::create(name: "DESPLANTE PATINADO", category_id: 3)
Exercise::create(name: "RANAS", category_id: 3)
Exercise::create(name: "SALTO PLEGADO", category_id: 3)

Exercise::create(name: "PLANCHA", category_id: 4)
Exercise::create(name: "PLANCHA CAMINANDO", category_id: 4)
Exercise::create(name: "PLANCHA LATERAL", category_id: 4)
Exercise::create(name: "ABS CRUNCH", category_id: 4)
Exercise::create(name: "ABS INVERSA", category_id: 4)
Exercise::create(name: "GIROS RUSOS", category_id: 4)
Exercise::create(name: "ABS EN V", category_id: 4)
Exercise::create(name: "ABS BICI", category_id: 4)
Exercise::create(name: "ABS PIERNA", category_id: 4)
Exercise::create(name: "SUPERMAN", category_id: 4)

Discipline::create(name: 'PESAS')
Discipline::create(name: 'CROSSFIT')
Discipline::create(name: 'BOOTCAMP')
Discipline::create(name: 'SPINNING')

Food::create([{name: "Aceitunas", proteins: 1.56, calories: 150.7 },
{name: "Acelgas", proteins: 2.92, calories: 26.58},
{name: "Agua de coco", proteins: 0.31, calories:20.65 },
{name: "Aguacate", proteins: 1.72, calories:170 },
{name: "Ajo", proteins: 3.50, calories: 161},
{name: "Ajonjoli", proteins: 22.5, calories: 601},
{name: "Alcachofa", proteins: 0.65, calories: 12},
{name: "Alfalfa", proteins: 3.66, calories: 38.32},
{name: "Almeja", proteins: 15.30, calories: 91.23},
{name: "Almendra", proteins: 34.0, calories: 557},
{name: "Alubia", proteins: 20.25, calories: 340.57},
{name: "Apio", proteins: 1.5, calories: 23},
{name: "Arroz", proteins: 7.82, calories: 360},
{name: "Ates", proteins: 0.9, calories: 152},
{name: "Atoles", proteins: 0.5, calories: 146},
{name: "Ave Carne", proteins: 20.78, calories: 400},
{name: "Ave total", proteins: 8.84, calories: 255.72},
{name: "Avellana", proteins: 16.50, calories: 687.90},
{name: "Avena", proteins: 11, calories: 378},
{name: "Azucar de caña", proteins: 0, calories: 400},
{name: "Bacalao", proteins: 60, calories: 429},
{name: "Berenjena", proteins: 9.80, calories: 244.20},
{name: "Berro", proteins: 9, calories: 590},
{name: "Betabel", proteins: 60.0, calories: 531},
{name: "Brandy", proteins: 0, calories: 244.20},
{name: "Cacahuate", proteins: 27.40, calories: 590},
{name: "Cacao", proteins: 16, calories: 593.90},
{name: "Cafe instantaneo", proteins: 10.10, calories: 373.70},
{name: "Cafe con Leche", proteins: 6.7, calories: 168},
{name: "Calabaza", proteins: 0.99, calories: 107},
{name: "Calabacita", proteins: 1.54, calories: 73.55},
{name: "Camaron", proteins: 0, calories: 400},
{name: "Camote", proteins: 0.99, calories: 107},
{name: "Caramelos", proteins: 0, calories: 400},
{name: "Carnero", proteins: 23.90, calories: 267.5},
{name: "Cerdo", proteins: 16.76, calories: 282.4},
{name: "Conejo", proteins: 13.6, calories: 90.4},
{name: "Pescado", proteins: 20, calories: 90},
{name: "Pollo", proteins: 23.9, calories: 267.5},
{name: "Res", proteins: 19.37, calories: 225},
{name: "Seca (cecina)", proteins: 50.0, calories: 515},
{name: "carpa", proteins: 19.24, calories: 86.14},
{name: "catsup", proteins: 2.62, calories: 53.40},
{name: "Cebada", proteins: 11.3, calories: 332},
{name: "Cebolla", proteins: 1.25, calories: 36.96},
{name: "Cerveza", proteins: 1.37, calories: 46.37},
{name: "Cerveza clara", proteins: 0.61, calories: 46.24},
{name: "Cerveza oscura", proteins: 0.61, calories: 59.36},
{name: "Ciruela", proteins: 0.89, calories: 62.24},
{name: "Clara de huevo", proteins: 24, calories: 120},
{name: "Col", proteins: 2.56, calories: 31.30},
{name: "Coliflor", proteins: 1.50, calories: 25.66},
{name: "Chabacano", proteins: 0.64, calories: 38.07},
{name: "Champiñon", proteins: 4.69, calories: 38.07},
{name: "Charal Seco", proteins: 98.3, calories: 308},
{name: "Chayote", proteins:1 , calories: 31.85},
{name: "Chicharo", proteins:2.81 , calories: 95.25},
{name: "Chilacayote", proteins: 1.18, calories: 15.77},
{name: "Chipotle adobado", proteins: 1.39, calories: 55.89},
{name: "Escabeche", proteins: 1.39, calories: 55.89},
{name: "Jalapeño", proteins: 0.77, calories: 32.27},
{name: "Chile Poblano", proteins: 2.56, calories: 58.5},
{name: "Chile Serrano", proteins: 0.77, calories: 32.27},
{name: "chocolate con azucar", proteins: 9.5, calories: 426},
{name: "Chocolate sin azucar", proteins: 13.8, calories: 548.48},
{name: "Chorizo", proteins: 24, calories: 425.30},
{name: "Durazno", proteins: 1.17, calories: 65.91},
{name: "Almibar", proteins: 0.12, calories: 134.15},
{name: "Ejotes", proteins: 2.86, calories: 28.53},
{name: "Elotes", proteins: 1.37, calories: 46.56},
{name: "Elote tierno", proteins: 1.37, calories: 91},
{name: "Epazote", proteins: 2.75, calories: 31.60},
{name: "Espagueti", proteins: 12.17, calories: 374},
{name: "Esparrago", proteins: 1.80, calories: 19.6},
{name: "Espinaca", proteins: 2.85, calories: 19.78},
{name: "Fideo", proteins: 7.5, calories: 346},
{name: "Flor de Calabaza", proteins: 1.45, calories: 20.31},
{name: "Fresas", proteins: 0.84, calories: 26.01},
{name: "Fresas en conserva", proteins: 0.75, calories: 134.10},
{name: "Frijol", proteins: 20.90, calories: 341},
{name: "Frutas en almibar", proteins: 0.62, calories: 168},
{name: "Desecadas en azucar", proteins: 4.70, calories: 267.80},
{name: "Jaleas", proteins: 0.1, calories: 321},
{name: "Jugos", proteins: 0.31, calories: 57.55},
{name: "Galletas", proteins: 9.80, calories: 386},
{name: "Soda", proteins: 8.3, calories: 407},
{name: "Garbanzo", proteins: 20.10, calories: 171.16},
{name: "Gelatina", proteins: 3.8, calories: 71},
{name: "Germen de trigo", proteins: 28.52, calories: 377},
{name: "Semilla de Girasool", proteins: 25.51, calories: 568.38},
{name: "Granada", proteins: 1, calories: 55.9},
{name: "Grenetina", proteins: 94, calories: 323.76},
{name: "Guachinango", proteins: 20.10, calories: 86.07},
{name: "Guayaba", proteins: 1, calories: 339.74},
{name: "Haba", proteins: 22.60, calories: 339.74},
{name: "Maiz", proteins: 8.10, calories: 369},
{name: "Soja", proteins: 40.80, calories: 359},
{name: "Trigo", proteins: 10.50, calories: 389.48},
{name: "Harina integral", proteins: 12.16, calories: 332},
{name: "Higado de res", proteins: 22.90, calories: 135},
{name: "Higo", proteins: 1.64, calories: 60.31},
{name: "Higo deshidratado", proteins: 3, calories: 312},
{name: "Hongos", proteins: 4.69, calories: 38.07},
{name: "Horchata", proteins: 1.1, calories: 120},
{name: "Huevo duro", proteins: 14, calories: 150},
{name: "Jaiba", proteins: 19.10, calories: 79.73},
{name: "Jaleas", proteins: 0.14, calories: 280},
{name: "Jamon ahumado", proteins: 17.50, calories: 430},
{name: "jicama", proteins: 0, calories: 0},
{name: "fruta mezclada", proteins: 0.35, calories: 59.74},
{name: "Tomate", proteins: 1, calories: 10.80},
{name: "Naranja", proteins: 1.2, calories: 75},
{name: "Vegetales", proteins: 1.6, calories: 29},
{name: "Zanahoria", proteins: 1, calories: 18.70},
{name: "Langosta", proteins: 24, calories: 99.50},
{name: "Leche condensada", proteins: 9.50, calories: 326},
{name: "Leche materna", proteins: 1.30, calories: 66},
{name: "Leche en polvo", proteins: 22, calories: 441},
{name: "Leche de vaca", proteins: 3.38, calories: 63.73},
{name: "Lchuga", proteins: 1.37, calories: 23.20},
{name: "Lenteja", proteins: 22.73, calories: 331.80},
{name: "Levadura de cerveza", proteins: 50.30, calories: 358},
{name: "Lima", proteins: 0.6, calories: 29.32},
{name: "Limon", proteins: 0.97, calories: 42.65},
{name: "Macarron", proteins: 13, calories: 353},
{name: "Maiz entero", proteins: 9.45, calories: 366.45},
{name: "Maizena", proteins: 8.49, calories: 360.98},
{name: "Mamey", proteins: 1.66, calories: 77.10},
{name: "Mandarina", proteins: 1, calories: 34.9},
{name: "Mango", proteins: 0.85, calories: 50.65},
{name: "Mantequilla", proteins: 0.50, calories: 722},
{name: "Manzana", proteins: 0.32, calories: 71.40},
{name: "Margarina", proteins: 0.30, calories: 785},
{name: "Masa de maiz", proteins: 8.50, calories: 389},
{name: "Masa de Trigo", proteins: 10.9, calories: 369.41},
{name: "Melaza", proteins: 0, calories: 232},
{name: "Melon", proteins: 0.57, calories: 28.78},
{name: "Membrillo", proteins: 0.37, calories: 50.65},
{name: "Menudo", proteins: 6.81, calories: 135.64},
{name: "Mermelada de chabacano", proteins: 0.50, calories: 284.20},
{name: "Mermelada de fresa", proteins: 0.45, calories: 267},
{name: "Miel de abeja", proteins: 0.40, calories: 326.45},
{name: "Miel de caña", proteins: 0, calories: 240},
{name: "Miel de maiz", proteins: 0, calories: 296},
{name: "Miel de Maple", proteins: 0, calories: 286},
{name: "Mijo", proteins: 11.8, calories: 338},
{name: "Mojarra", proteins: 19.16, calories: 100},
{name: "Nabo", proteins: 1.65, calories: 21.30},
{name: "Naranja", proteins: 1.06, calories: 48.74},
{name: "Nata de leche", proteins: 3.11, calories: 477.74},
{name: "Nopal", proteins: 1.65, calories: 21.93},
{name: "Nuez de california", proteins: 16.60, calories: 701},
{name: "Nuez de castilla", proteins: 30.30, calories: 664},
{name: "Oregano", proteins: 5, calories: 103.62},
{name: "Ostion", proteins: 18.30, calories: 105},
{name: "Pan bolillo", proteins: 9, calories: 278.64},
{name: "Papa frita", proteins: 1.55, calories: 76.84},
{name: "Papa en pure", proteins: 1.4, calories: 160},
{name: "Papaya", proteins: 2.7, calories: 99},
{name: "Pasta para sopa", proteins: 0.52, calories: 27.34},
{name: "Pato", proteins: 10.67, calories: 357},
{name: "Pepino", proteins: 16.40, calories: 331.28},
{name: "Pera", proteins: 0.87, calories: 14.77},
{name: "Peron", proteins: 0.45, calories: 67.29},
{name: "Pescado", proteins: 0.35, calories: 14.77},
{name: "Pinole", proteins: 19.84, calories: 94.92},
{name: "Piña", proteins: 10.70, calories: 401.80},
{name: "Piñon", proteins: 0.56, calories: 36.80},
{name: "Pistaches", proteins: 28.10, calories: 629},
{name: "Pulpo", proteins: 22, calories: 639.20},
{name: "Queso de cabra", proteins: 12.61, calories: 530.30},
{name: "Queso cotija", proteins: 23.60, calories: 98.90},
{name: "Queso chihuahua", proteins: 32.30, calories: 417},
{name: "Queso enchilado", proteins: 28.80, calories: 448},
{name: "Queso gruyere", proteins: 24, calories: 406.35},
{name: "Queso oaxaca", proteins: 30.50, calories: 387.30},
{name: "Queso panela", proteins: 25.50, calories: 291},
{name: "Queso ranchero", proteins: 25.70, calories: 330.23},
{name: "Queso de tuna", proteins: 20.90, calories: 214},
{name: "rabano", proteins: 24.40, calories: 273.10},
{name: "Requeson", proteins: 1.25, calories: 321.80},
{name: "Riñon de res", proteins: 1.28, calories: 18.51},
{name: "jocoque", proteins: 13.30, calories: 115.31}
])

User::create(email: "zsckare@gmail.com",password:"12qwaszx")