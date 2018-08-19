//
//  Celda_Producto.swift
//  eShop
//
//  Created by Carlos Alberto Chavez Reyes on 14/08/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import UIKit

class Celda_Producto: UICollectionViewCell {
    @IBOutlet weak var imagen : UIImageView!
    @IBOutlet weak var titulo : UILabel!
    @IBOutlet weak var precio : UILabel!
    
    func updateViews(productos: Producto){
        titulo.text = productos.titulo
        imagen.image = UIImage(named: productos.imagen)
        precio.text = productos.precio
    }
}
 
