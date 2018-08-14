//
//  Categoria.swift
//  eShop
//
//  Created by Carlos Alberto Chavez Reyes on 13/08/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import Foundation
struct Categoria {
    private(set) public var titulo:String
    private(set) public var imagen:String
    
    init(titulo:String, imagen:String) {
        self.titulo = titulo
        self.imagen = imagen
    }
}
