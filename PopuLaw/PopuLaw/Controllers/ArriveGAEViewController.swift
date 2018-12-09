//
//  ArriveGAEViewController.swift
//  PopuLaw
//
//  Created by user on 12/9/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class ArriveGAEViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func backPressed(_ sender: Any) {
        if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }
    }
    
}
