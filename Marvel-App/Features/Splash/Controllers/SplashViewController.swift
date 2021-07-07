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
        
        navigationController?.isNavigationBarHidden = true
        
        activityIndicator.startAnimating()
        loadData()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        navigationController?.isNavigationBarHidden = false
        
        activityIndicator.stopAnimating()
    }
    
    // MARK: - Private methhods
    private func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) { [weak self] in
            print("Load data completed")
            
      //     Navegación con SEGUE
            
     //      self?.performSegue(withIdentifier: "SEGUE_FROM_SPLASH_TO_HOME",
     //                         sender: nil)
            
     
    //      Navegación manual tener en cuenta setViewController para vaciar la pila de navegación. Con pushView... se haria navegación normal
            
            let storyboardHome = UIStoryboard(name: "Home",
                                              bundle: nil)
            if let destination = storyboardHome.instantiateInitialViewController() {
                self?.navigationController?.setViewControllers([destination],
                                                               animated: true)
            }
        }
    }
}
