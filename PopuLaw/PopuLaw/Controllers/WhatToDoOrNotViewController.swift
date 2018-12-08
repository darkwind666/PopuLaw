//
//  WhatToDoOrNotViewController.swift
//  PopuLaw
//
//  Created by user on 12/8/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class WhatToDoOrNotViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backPressed(_ sender: Any) {
        if let navController = self.navigationController {
        navController.popViewController(animated: true)
        }
    }

    @IBAction func nextPressed(_ sender: Any) {
    }

}
