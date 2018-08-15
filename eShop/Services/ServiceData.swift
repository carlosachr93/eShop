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
        Categoria(titulo: "PLAYERAS", imagen: "shirts.png"),
        Categoria(titulo: "SUDADERAS", imagen: "hoodies.png"),
        Categoria(titulo: "GORRAS", imagen: "hats.png"),
        Categoria(titulo: "DIGITAL", imagen: "digital.png")
    ]
    
    private let Gorras = [
        Producto(tituloProducto: "Devslopes Logo Graphic Beani", precioProducto: "$18.00", imagenProducto: "hat01.png"),
        Producto(tituloProducto: "Devslopes Logo Gorra Negra", precioProducto: "$22.00", imagenProducto: "hat02.png"),
        Producto(tituloProducto: "Devslopes Logo Gorra Blanca", precioProducto: "$22.00", imagenProducto: "hat03.png"),
        Producto(tituloProducto: "Devslopes Logo Snapback", precioProducto: "$20.00", imagenProducto: "hat04.png")
    ]
    
    private let Sudaderas = [
        Producto(tituloProducto: "Devslopes Logo Sudadera Gris", precioProducto: "$32.00", imagenProducto: "hoodie01.png"),
        Producto(tituloProducto: "Devslopes Logo Sudadera Roja", precioProducto: "$32.00", imagenProducto: "hoodie02.png"),
        Producto(tituloProducto: "Devslopes Sudadera Gris", precioProducto: "$30.00", imagenProducto: "hoodie03.png"),
        Producto(tituloProducto: "Devslopes Sudadera Negra", precioProducto: "$30.00", imagenProducto: "hoodie04.png")
    ]
    
    private let Playeras = [
        Producto(tituloProducto: "Devslopes Logo Playera Negra", precioProducto: "$18.00", imagenProducto: "shirt01.png"),
        Producto(tituloProducto: "Devslopes Badge Playera Gris", precioProducto: "$18.00", imagenProducto: "shirt02.png"),
        Producto(tituloProducto: "Devslopes Logo Playera Roja", precioProducto: "$18.00", imagenProducto: "shirt03.png"),
        Producto(tituloProducto: "Hustle Delegate Gris", precioProducto: "$18.00", imagenProducto: "shirt04.png"),
        Producto(tituloProducto: "Kickflip Studios Negra", precioProducto: "$18.00", imagenProducto: "shirt05.png")
    ]
    
    private let Digitales = [Producto]()
    
    func getCategorias() -> [Categoria] {
        return Categorias
    }
    
    func getGorras() -> [Producto] {
        return Gorras
    }
    
    func getSudaderas() -> [Producto] {
        return Sudaderas
    }
    
    func getPlayeras() -> [Producto] {
        return Playeras
    }
    
    func getDigitales() -> [Producto] {
        return Digitales
    }
    
    func getProductos(categoriaProducto categoria: String) -> [Producto] {
        switch categoria {
            case "playeras":
                return getPlayeras()
            case "gorras":
                return getGorras()
            case "sudaderas":
                return getSudaderas()
            case "digitales":
                return getDigitales()
            default:
                return getPlayeras()
        }
    }
}
