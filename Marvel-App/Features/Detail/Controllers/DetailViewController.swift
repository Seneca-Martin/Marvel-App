//
//  DetailViewController.swift
//  Marvel-App
//
//  Created by seneca on 08/07/2021.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var power: UILabel!
    @IBOutlet var descripcion: UILabel!
    
    // MARK: - Public properties
    var metahuman: Metahuman?
    
    
    
    
    // MARK: - Lifecycle
        override func viewDidLoad() {
            super.viewDidLoad()
            update(image: metahuman?.image)
            update(name: metahuman?.name)
            update(power: metahuman?.power)
            update(descripcion: metahuman?.descripcion)
        }
    

    
    // Funcion para cargar los datos del modelo a los componentes de la celda
    func updateViews (metahuman: Metahuman) {
        update(image: metahuman.image)
        update(name: metahuman.name)
        update(power: metahuman.power)
        update(descripcion: metahuman.descripcion)
        
    }
    
    
    private func update(image: String?) {
        heroImage.image = UIImage(named: image ?? "")
    }
    
    private func update(name: String?) {
        self.name.text = name
    }
    
    private func update(power: Float?) {
        self.power.text = "Poder: \(String(describing: power ?? 0))"
    }
    
    private func update(descripcion: String?) {
        self.descripcion.text = descripcion
    }
}
