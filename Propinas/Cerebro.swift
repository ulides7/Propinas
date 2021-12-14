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

    

    func calculartotal(precio: Float, propina: Float){
      
        let precio = precio
        let propina = propina
      //  let imagen = UIImage
    
        let valor = (precio * propina)
        
        
        
      
       
        imc = Valores (Valor: valor, imagen: UIImage(named: "1"))
           
        print(valor)
    }
      
    func retornarValor() -> String {
        let imcCon1Decimal = String(format: "%.1f", imc?.Valor ?? 0.0)
        return imcCon1Decimal
    }
   
    
        
        func retornarImg() -> UIImage {
            return imc?.imagen ?? UIImage(named: "imc")!
        }
        
        
        
        
}
