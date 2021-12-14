//
//  ViewController.swift
//  Propinas
//
//  Created by Ulises M on 14/12/21.
//

import UIKit

class ViewController: UIViewController {
    var Cerebrobro: () = Cerebro()

    @IBOutlet weak var totallbl: UITextField!
    
    @IBOutlet weak var cantidadtxt: UILabel!
    
    @IBOutlet weak var Slider: UISlider!
    
   
    @IBOutlet weak var calcularbtn: UIButton!
    
    var precio: Float!
    var propina: Float!
    var resultado: Float!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        totallbl.text = "$ \(Slider.value)"
       
        
    }

    @IBAction func calcularbtn(_ sender: UIButton) {
        
        Cerebrobro.calculartotal(precio: precio, propina: propina)
       
        performSegue(withIdentifier: "calcular", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calcular" {
            let destino = segue.destination as! Resultado
            destino.Valor = Cerebrobro.retornarValor()
            destino.imagen = Cerebrobro.retornarImg()
            
        }
    }
    
    @IBAction func pesoSliderAccion(_ sender: UISlider) {
        print(sender.value)
        //mostrar en el label el valor del slider
        
        //var balance = String(format: "%.2f", balanceNumber)
        totallbl.text = "\(String(format: "%.1f", sender.value))  Kg."
        
    }
    

}

