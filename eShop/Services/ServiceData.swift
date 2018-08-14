//
//  ServiceData.swift
//  eShop
//
//  Created by Carlos Alberto Chavez Reyes on 13/08/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import Foundation
class ServiceData {
    static let instancia = ServiceData()
    
    private let Categorias = [
        Categoria(titulo: "CAMISAS", imagen: "shirts.png"),
        Categoria(titulo: "SUDADERAS", imagen: "hoodies.png"),
        Categoria(titulo: "SOMBREROS", imagen: "hats.png"),
        Categoria(titulo: "DIGITAL", imagen: "digital.png")
    ]
    
    func getCategorias() -> [Categoria] {
        return Categorias
    }
}
