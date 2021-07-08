//
//  HeroTableViewCell.swift
//  Marvel-App
//
//  Created by seneca on 08/07/2021.
//

import UIKit

class HeroTableViewCell: UITableViewCell {
    static let cellIdentifier: String = String(describing: HeroTableViewCell.self)
    
    // MARK - IBOutlets
    @IBOutlet weak var cellView: UIView!
    @IBOutlet weak var heroImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var power: UILabel!
    
    
    // MARK: Lifecycle
    
    // Se llama cuando se crea la celda
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Para que al pulsar la celda no se quede en gris como pulsada
        selectionStyle = .none
        
        cellView.layer.cornerRadius = 4.0
        cellView.layer.shadowColor = UIColor.gray.cgColor
        cellView.layer.shadowOffset = CGSize.zero
        cellView.layer.shadowOpacity = 0.7
        cellView.layer.shadowRadius = 4.0
    }
    
    // Se utiliza cuando se vuelven a utilizar las celdas que desaparecen en el scroll
    // Esta funcion si es importante para la reutilización de las celdas
    override func prepareForReuse() {
        super.prepareForReuse()
        
    // Limpiamos los datos de las celdas. Es importante
        heroImage.image = nil
        name.text = nil
        power.text = nil
    }
    
    
    // Funcion para cargar los datos del modelo a los componentes de la celda
    func updateViews (metahuman: Metahuman) {
        update(image: metahuman.image)
        update(name: metahuman.name)
        update(power: metahuman.power)
        
    }
    
    
    private func update(image: String?) {
        heroImage.image = UIImage(named: image ?? "")
    }
    
    private func update(name: String?) {
        self.name.text = name
    }
    
    private func update(power: Float) {
        self.power.text = "Poder: \(String(describing: power))"
    }
    
}
