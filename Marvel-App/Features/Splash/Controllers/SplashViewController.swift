//
//  SplashViewController.swift
//  Marvel-App
//
//  Created by seneca on 07/07/2021.
//

import UIKit

class SplashViewContrller: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        activityIndicator.startAnimating()
        loadData()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        activityIndicator.stopAnimating()
    }
    
    // MARK: - Private methhods
    private func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            print("Load data completed")
        }
    }
}
