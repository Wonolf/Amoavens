//
//  FirstViewController.swift
//  Amoavens
//
//  Created by Bononya on 19/02/2020.
//  Copyright © 2020 Bononya. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource {
    
    let alquiler_modelos : [String] = ["Ford Fiesta","Nissan Leaf","Lexus CT", "Chevrolet Cruze Diesel","Hyundai Kona","Dacia Logan","Honda Jazz","Lamborghini Urus","Opel Corsa","Renault Mégane"]
    
    let alquiler_precios : [Int] = [42,87,58,51,45,23,39,326,33,46]
    
    var alquiler_fotos : [UIImage] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        alquiler_fotos.append(UIImage(named: "fordfiesta")!)
        alquiler_fotos.append(UIImage(named: "nissanleaf")!)
        alquiler_fotos.append(UIImage(named: "lexusct")!)
        alquiler_fotos.append(UIImage(named: "chevroletcruze")!)
        alquiler_fotos.append(UIImage(named: "hyundaikona")!)
        alquiler_fotos.append(UIImage(named: "dacialogan")!)
        alquiler_fotos.append(UIImage(named: "hondajazz")!)
        alquiler_fotos.append(UIImage(named: "lamborghiniurus")!)
        alquiler_fotos.append(UIImage(named: "opelcorsa")!)
        alquiler_fotos.append(UIImage(named: "renaultmegane")!)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alquiler_modelos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell1=tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! CellController1
        
            cell1.modelos?.text=alquiler_modelos[indexPath.row]
            cell1.precio?.text=String(alquiler_precios[indexPath.row])
            cell1.imagenes?.image=alquiler_fotos[indexPath.row]
    
          return cell1
      }
    
    func tableview( tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let details = storyboard.instantiateViewController(identifier: "detalles") as! Detalles1
        
        details.sentImagen = alquiler_fotos[indexPath.row]
        details.sentModelo = alquiler_modelos[indexPath.row]
        details.sentPrecio = alquiler_precios[indexPath.row]
        
        self.navigationController?.pushViewController(details, animated: true)
    }
}
