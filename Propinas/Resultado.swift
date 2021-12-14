//
//  Resultado.swift
//  Propinas
//
//  Created by Ulises M on 14/12/21.
//

import UIKit

class Resultado: UIViewController {
    var valor: String?
    var imagen: UIImage?
    
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var imagenview: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        resultado.text = valor
        imagenview.image = imagen
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
