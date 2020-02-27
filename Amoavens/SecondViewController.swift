//
//  SecondViewController.swift
//  Amoavens
//
//  Created by Bononya on 19/02/2020.
//  Copyright © 2020 Bononya. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource {

    
    let salida : [String] = ["Granada","Madrid","Jaen", "Granada","Madrid","Almería","Barcelona","Madrid","Barcelona"]
    let llegada : [String] = ["Madrid","Almería","Barcelona","Madrid","Barcelona","Granada","Madrid","Jaen", "Granada"]
    let fecha : [String] = ["4-3-2020","28-2-2020","4-3-2020","28-2-2020","4-3-2020","1-3-2020","4-3-2020","28-2-2020", "1-3-2020"]
    let precio : [Int] = [20,30,50,22,30,15,32,25,55]
    
    let nombres : [String] = ["Alicia Sánchez Gijón","Pepe Córdoba","Analisa Melano","Lola Mento","Pacotxi Fernández","Johnny Melavo","Senén Lara Moreno","Ainhoa Lavoa","Bonoso Sierra"]
    let valoracion : [Double] = [4.2,4.8,3.6,4.0,3.2,3.9,4.4,4.3,4.7]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return salida.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell2=tableView.dequeueReusableCell(withIdentifier: "cell2", for: indexPath) as! CellController2
        
            cell2.salida?.text=salida[indexPath.row]
            cell2.llegada?.text=llegada[indexPath.row]
            cell2.fecha?.text=fecha[indexPath.row]
            cell2.precio?.text=String(precio[indexPath.row])
            cell2.nombre?.text=nombres[indexPath.row]
            cell2.valoracion?.text=String(valoracion[indexPath.row])
    
          return cell2
      }

}

