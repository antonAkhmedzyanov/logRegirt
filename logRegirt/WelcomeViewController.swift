//
//  WelcomeViewController.swift
//  logRegirt
//
//  Created by Anton Akhmedzyanov on 16.09.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    
    @IBOutlet var userNameLabel: UILabel!
    
    var name: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        userNameLabel.text = name
    }
    

    
    @IBAction func pressedLogout() {
        dismiss(animated: true)
        
    }
    
}
