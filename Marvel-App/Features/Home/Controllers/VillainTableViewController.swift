//
//  VillainTableViewController.swift
//  Marvel-App
//
//  Created by seneca on 09/07/2021.
//

import UIKit

class VillainTableViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Private properties
    private let metaHumanRepository = MetahummanRepository()
    private var metaHumans: Metahumans = []
    
    private let segueToDetail = "SEGUE_FROM_HOME_TO_DETAIL"
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Villanos"
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        loadData()
        tableView.reloadData()
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController,
              let metahumanSelected = sender as? Metahuman else {
            return
        }
        
        destination.metahuman = metahumanSelected
    }
    
    private func loadData() {
        metaHumans = metaHumanRepository.metahumansVillain
    }
}

extension VillainTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return metaHumans.count
    }
    
    // Esto va a ser así el 90% de las veces
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: VillainTableViewCell.cellIdentifier,
                                                 for: indexPath) as? VillainTableViewCell
        
        // Pintamos los datos de la celda
        if indexPath.row < metaHumans.count {
            cell?.updateViews(metahuman: metaHumans[indexPath.row])
        }
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row < metaHumans.count {
           let metahuman = metaHumans[indexPath.row]
            
            // Navegando con SEGUE
            performSegue(withIdentifier: segueToDetail,
                         sender: metahuman)
            
            
            // Para hacerlo sin SEGUE
//            let storyboardHome = UIStoryboard(name: "Detail",
//                                              bundle: nil)
//            if let destination = storyboardHome.instantiateInitialViewController() as? DetailViewController {
//                destination.metahuman = metahuman
//                navigationController?.pushViewController(destination,
//                                                         animated: true)
//            }
        }
    }
}
