//
//  Cerebro.swift
//  Propinas
//
//  Created by Ulises M on 14/12/21.
//

import Foundation
import UIKit


func Cerebro() {
    var imc: Valores?

    

    mutating func calcularTotal(precio: Float, propina: Float){
      
        let precio = precio
        let propina = propina
      //  let imagen = UIImage
    
        let valor = (precio * propina/100)
        
        
        if propina < 6{
      
       
        imc = Valores (Valor: valor, imagen: UIImage(named: "1"))
        } else if propina < 11{
            imc = Valores (Valor: valor, imagen: UIImage(named: "2"))
            
        } else if propina < 16 {
            imc = Valores (Valor: valor, imagen: UIImage(named: "3"))
        }
        
        
        
        
        print(valor)
    }
    
    
      
    func retornarValor() -> String {
        let valor = String(format: "%.1f", imc?.Valor ?? 0.0)
        return valor
    }
   
    
        
        func retornarImg() -> UIImage {
            return imc?.imagen ?? UIImage(named: "imc")!
        }
        
        
        
        
}
