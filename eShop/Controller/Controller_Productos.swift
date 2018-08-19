//
//  Controller_Productos.swift
//  eShop
//
//  Created by Carlos Alberto Chavez Reyes on 15/08/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import UIKit

class Controller_Productos: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productosCollection:UICollectionView!
    
    private(set) public var productos = [Producto]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productosCollection.dataSource = self
        productosCollection.delegate = self
        // Do any additional setup after loading the view.
    }
 
    func initProductos(categoria : Categoria) {
        productos = ServiceData.instancia.getProductos(categoriaProducto: categoria.titulo)
        navigationItem.title = categoria.titulo
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productos.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductoCell", for: indexPath) as? Celda_Producto
        {
            let Producto = productos[indexPath.row]
            cell.updateViews(productos: Producto)
            return cell
        }
         return Celda_Producto()
    }

}
