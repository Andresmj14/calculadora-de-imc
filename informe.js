"use strict";
const personas =[]


const calculadora_imc= function () {
    alert('bienvenido al sistema calculador de IMC')
    
    let id = prompt('Ingresa el id de la persona');
    let nombre = prompt('Ingresa el nombre de la persona');
    let edad = parseInt(prompt('Ingresa la edad de la persona'));
    let genero = prompt('Registra el género de la persona (Masculino / Femenino / Otro) - ingresalo en mayúscula');
    let peso = parseFloat(prompt('Ingresa el peso de la persona (kg)'));
    let altura = parseFloat(prompt('Ingresa la altura de la persona (m)'));
    let IMC = peso / (altura * altura);

    personas.push(id)
    personas.push(nombre, edad, genero, peso, altura, IMC)

    if (confirm("deseas ingresar a otro paciente")){
        return calculadora_imc
    }


    
};
calculadora_imc()