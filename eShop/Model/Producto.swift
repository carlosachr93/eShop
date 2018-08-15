//
//  Producto.swift
//  eShop
//
//  Created by Carlos Alberto Chavez Reyes on 14/08/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import Foundation

struct Producto {
    private(set) public var titulo : String
    private(set) public var precio : String
    private(set) public var imagen : String
    
    init(tituloProducto : String,precioProducto : String, imagenProducto:String) {
        self.titulo = tituloProducto
        self.precio = precioProducto
        self.imagen = imagenProducto
    }
}
