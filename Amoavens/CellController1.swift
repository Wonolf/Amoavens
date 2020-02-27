//
//  CellController1.swift
//  Amoavens
//
//  Created by Bononya on 19/02/2020.
//  Copyright © 2020 Bononya. All rights reserved.
//

import UIKit

class CellController1: UITableViewCell {
   
    
    @IBOutlet weak var imagenes: UIImageView!
    @IBOutlet weak var precio: UILabel!
    @IBOutlet weak var modelos: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
