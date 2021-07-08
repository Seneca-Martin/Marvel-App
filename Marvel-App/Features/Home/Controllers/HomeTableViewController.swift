//
//  HomeTableViewController.swift
//  Marvel-App
//
//  Created by seneca on 05/07/2021.
//

import UIKit

class HomeTableViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Private properties
    private let metaHumanRepository = MetahummanRepository()
    private var metaHumans: Metahumans = []
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        loadData()
        tableView.reloadData()
    }
    
    private func loadData() {
        metaHumans = metaHumanRepository.metahumansHero
    }
}

extension HomeTableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return metaHumans.count
    }
    
    // Esto va a ser así el 90% de las veces
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HeroTableViewCell.cellIdentifier,
                                                 for: indexPath) as? HeroTableViewCell
        
        // Pintamos los datos de la celda
        if indexPath.row < metaHumans.count {
            cell?.updateViews(metahuman: metaHumans[indexPath.row])
        }
        
        return cell ?? UITableViewCell()
    }
}
