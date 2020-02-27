//
//  Detalles1.swift
//  Amoavens
//
//  Created by Bononya on 21/02/2020.
//  Copyright © 2020 Bononya. All rights reserved.
//

import UIKit

class Detalles1: UIViewController {
    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var modelo: UILabel!
    @IBOutlet weak var precio: UILabel!
    
    @IBOutlet weak var dias: UITextField!
    
    var sentImagen: UIImage = UIImage(named: "fordfiesta")!
    var sentModelo: String = ""
    var sentPrecio: Int = 0
    
    var dias_alquiler: Int = 0
    var precio_alquiler: Int = 0
    var debepagar: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagen.image = sentImagen
        modelo.text = sentModelo
        precio.text = String(sentPrecio)
    }
    
    @IBAction func pagar(_ sender: Any) {
        dias_alquiler = Int(dias.text!)!
        precio_alquiler = Int(precio.text!)!
        debepagar = dias_alquiler * precio_alquiler
        let alert = UIAlertController(title: "¿Alquilar coche?", message: "Alquilar el coche durante " + String(dias_alquiler) + " días son " + String(debepagar) + " € en total. ¿Aceptar reserva?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: { action in
              switch action.style{
              case .default:
                    print("default")
                    let alert2 = UIAlertController(title: "Gracias", message: "Gracias por la reserva del coche. Puede pasar a recogerlo a partir de ya.", preferredStyle: .alert)
                    alert2.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: { action in
                          switch action.style{
                          case .default:
                                print("default")
                                
                            
                          case .cancel:
                                print("cancel")

                          case .destructive:
                                print("destructive")


                          @unknown default:
                            print("Error inesperado")
                        }}))
                
                        self.present(alert2, animated: true, completion: nil)
                
              case .cancel:
                    print("cancel")

              case .destructive:
                    print("destructive")


              @unknown default:
                print("Error inesperado")
            }}))
        
        alert.addAction(UIAlertAction(title: "Cancelar", style: .default, handler: { action in
              switch action.style{
              case .default:
                    print("default")
                
              case .cancel:
                    print("cancel")

              case .destructive:
                    print("destructive")


              @unknown default:
                print("Error inesperado")
            }}))
        self.present(alert, animated: true, completion: nil)
    }
    
}
