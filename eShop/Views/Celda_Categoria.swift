//
//  Celda_Categoria.swift
//  eShop
//
//  Created by Carlos Alberto Chavez Reyes on 13/08/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import UIKit

class Celda_Categoria: UITableViewCell {
    
    @IBOutlet weak var imgCategoria : UIImageView!
    @IBOutlet weak var lblCategoria : UILabel!
     
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
