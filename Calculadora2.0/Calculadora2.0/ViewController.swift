//
//  ViewController.swift
//  Calculadora2.0
//
//  Created by iOSLab on 25/05/24.
//

import UIKit

class ViewController: UIViewController {

    let manager = Calculadora()
   
    @IBOutlet weak var numberOneInput: UITextField!
    @IBOutlet weak var numberTwoInput: UITextField!
    @IBOutlet weak var resultado: UILabel!
    

    
    
    
    @IBAction func divisão(_ sender: Any) {
        // Crio um guard let que converte o texto em numero e coloca um optional caso o mesmo venha em branco
        guard let num1 = Double(numberOneInput.text ?? ""),
              let num2 = Double(numberTwoInput.text ?? "") else {
            // mensagem de resultado inválido caso venha em branco
            resultado.text = "Inválido"
                   return
               }
        //Result pega o FUNC que foi criada em calculadora e altero os valores para os num que estão acima
               let result = manager.divisão(numberOne: num1, numberTwo: num2)
        
        // resultado do calculo acima
               resultado.text = String(result)
           }
    
    @IBAction func multiplicação(_ sender: Any) {
        guard let num1 = Double(numberOneInput.text ?? ""),
              let num2 = Double(numberTwoInput.text ?? "") else {
            // mensagem de resultado inválido caso venha em branco
            resultado.text = "Inválido"
                   return
               }
        let result = manager.multiplicação(numberOne: num1, numberTwo: num2)
        resultado.text = String(result)
        
        
    }
    
    
    @IBAction func soma(_ sender: Any) {
        guard let num1 = Double(numberOneInput.text ?? ""),
              let num2 = Double(numberTwoInput.text ?? "") else {
            resultado.text = "Inválido"
            return
        }
        
        let result = manager.soma(numberOne: num1, numberTwo: num2)
        resultado.text = String(result)
    }
    

    @IBAction func subtração(_ sender: Any) {
        guard let num1 = Double(numberOneInput.text ?? ""),
              let num2 = Double(numberTwoInput.text ?? "") else {
            resultado.text = "Inválido"
            return
            
        }
        let result = manager.subtração(numberOne: num1, numberTwo: num2)
        resultado.text = String(result)
    }
    
}

