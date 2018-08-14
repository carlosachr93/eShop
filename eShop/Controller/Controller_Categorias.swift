//
//  ViewController.swift
//  eShop
//
//  Created by Carlos Alberto Chavez Reyes on 12/08/18.
//  Copyright © 2018 CarlosChavez. All rights reserved.
//

import UIKit

class Controller_Categorias: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ServiceData.instancia.getCategorias().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CellCategoria") as? Celda_Categoria{
            let categoria = ServiceData.instancia.getCategorias()[indexPath.row]
            cell.updateViews(categoria: categoria)
            return cell
        }else{
            return Celda_Categoria()
        }
    }
    
    @IBOutlet weak var tablaCategoria : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tablaCategoria.dataSource = self
        tablaCategoria.delegate = self 
    }

    


}

