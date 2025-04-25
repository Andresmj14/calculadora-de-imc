 let micN = 0;
    let micO = 0;
    let micA = 0;
    for (let i = 0; i < personas.length; i++) {
        if (personas[i][6] < 18.5) {
            micN++;
        } else if (personas[i][6] >= 18.5 && personas[i][6] < 24.9) {
            micO++;
        } else if (personas[i][6] >= 25 && personas[i][6] < 29.9) {
            micA++;
      
  } 
    }

    alert(`Informe de IMC:\n\n- Bajo peso: ${micN}\n- Peso normal: ${micO}\n- Sobrepeso: ${micA}\n`);
    alert(`El IMC de ${nombre} es: ${IMC.toFixed(2)}`);
    alert(`El paciente con menor IMC es: ${pMimc[1]} con un IMC de ${menos_imc.toFixed(2)}`);   
    "use strict";


    
const personas =[]
let menos_imc = 0;
let pMimc = []
const MAIN_MENU = `CALCULADORA DE IMC
1. Ingresar datos de una persona
2. Informe de IMC
3. Salir
Elige una opción: `;


const calculadora_imc = function () {
    alert('bienvenido al sistema calculador de IMC')
    let id = prompt('Ingresa el id de la persona');
    let nombre = prompt('Ingresa el nombre de la persona');
    let edad = parseInt(prompt('Ingresa la edad de la persona'));
    let genero = prompt('Registra el género de la persona (Masculino / Femenino / Otro) - ingresa solo la inicial en Mayuscula');
    let peso = parseFloat(prompt('Ingresa el peso de la persona (kg)'));
    let altura = parseFloat(prompt('Ingresa la altura de la persona (m)'));
    let IMC = peso / (altura * altura);
    // Guardar los datos en un array
    personas.push([id,nombre, edad, genero, peso, altura, IMC]);

    if (menos_imc == 0) {
        menos_imc = IMC;
        pMimc.push( id, nombre, edad, genero, peso, altura, IMC);
    }
    else if (IMC < menos_imc) {
        menos_imc = IMC;
        pMimc = [];
        pMimc.push( id, nombre, edad, genero, peso, altura, IMC);
    }

    console.table(personas);
    const listaPacientes = personas.map(elemento => 
        `ID: ${elemento[0]}\n - Nombre: ${elemento[1]} \n- Edad: ${elemento[2]} \n- Genero: ${elemento[3]}\n - PESO: ${elemento[4]} \n- altura ${elemento[5]}\n - IMC : ${elemento[6].toFixed(2)}\n` 
    ).join('\n\n');
    
    alert(`LISTADO DE PACIENTES:\n\n${listaPacientes}`);   


    if (confirm("deseas ingresar a otro paciente")){
        return calculadora_imc();
    }
    else {
        return menu_principal();
    }
};
const informe_imc = function () {
    let sobrepeso_mujer,sobrepeso_hombres,menores,hombres,mujeres,promedioedad_hombres,promedioedad_mujeres
    sobrepeso_hombres=sobrepeso_mujer= menores = hombres = mujeres = promedioedad_hombres = promedioedad_mujeres = 0

    for (let i = 0; i < personas.length; i++) {
        if (personas[i][3] == "M") {
            hombres++;
            promedioedad_hombres += personas[i][2];
            console.log(personas[i][6])
            console.log(mujeres)
            if (personas[i][6] > 25) {
                sobrepeso_hombres++;
            }
        } else if (personas[i][3] == "F") {
            mujeres++;
            promedioedad_mujeres += personas[i][2];
            if (personas[i][6] > 25) {
                sobrepeso_mujer++;
            }
        } 
        if (personas[i][2] < 18) {
            menores++;
        }
    }
    alert(`informe de la cantidad de Informe de IMC:\n\n- Bajo peso: ${micN}\n- Peso normal: ${micO}\n- Sobrepeso: ${micA}\n);personas:\n\n- Hombres: ${hombres}\n- Mujeres: ${mujeres}\n- Menores de edad: ${menores}\n\nInforme de IMC:\n\n- Sobrepeso hombres: ${sobrepeso_hombres}\n- Sobrepeso mujeres: ${sobrepeso_mujer}\n\nPromedio de edad hombres: ${promedioedad_hombres / hombres}\nPromedio de edad mujeres: ${promedioedad_mujeres / mujeres}`);
    alert(`El IMC de ${pMimc[1]} es: ${pMimc[6].toFixed(2)}`);
    alert(`El paciente con menor IMC es: ${pMimc[1]} con un IMC de ${menos_imc.toFixed(2)}`);
    alert(`El paciente con mayor IMC es: ${personas[0][1]} con un IMC de ${personas[0][6].toFixed(2)}`);
    return menu_principal();
};

const menu_principal = function () { 
    do {
        let menu = prompt(MAIN_MENU);
        switch (menu) {
            case "1":
                calculadora_imc()
            case "2":
                informe_imc()
            case "3":
                alert("Saliste de la calculador de imc")
        }
        if (menu != 5) {
            alert("ingrese una opción valida");
        }
    } while (menu != 5);
}
menu_principal()







