//
//  CellController2.swift
//  Amoavens
//
//  Created by Bononya on 21/02/2020.
//  Copyright © 2020 Bononya. All rights reserved.
//

import UIKit

class CellController2: UITableViewCell {
   
    @IBOutlet weak var salida: UILabel!
    @IBOutlet weak var llegada: UILabel!
    @IBOutlet weak var fecha: UILabel!
    @IBOutlet weak var precio: UILabel!
    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var valoracion: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func Message(_ sender: Any) {
        let texto_precio : String = precio.text!
        let alert = UIAlertController(title: "¿Aceptar Reserva?", message: "El viaje cuesta " + texto_precio + " €. ¿Desea aceptar la reserva?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: { action in
              switch action.style{
              case .default:
                    print("default")
                    self.showToast(message: "¡Gracias por su reserva!")
                
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
        self.window?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    func showToast(message : String) {

        let toastLabel = UILabel(frame: CGRect(x: self.frame.size.width/2 - 150, y: self.frame.size.height-100, width: 300, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.addSubview(toastLabel)
        UIView.animate(withDuration: 6.0, delay: 0.1, options: .curveEaseOut, animations: {
             toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}

