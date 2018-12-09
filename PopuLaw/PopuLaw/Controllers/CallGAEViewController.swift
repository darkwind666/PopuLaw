//
//  CallGAEViewController.swift
//  PopuLaw
//
//  Created by user on 12/9/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class CallGAEViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func callGAEPressed(_ sender: Any) {
        guard let number = URL(string: "tel://" + "102") else { return }
        UIApplication.shared.open(number)
    }
    
    @IBAction func backPressed(_ sender: Any) {
        if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        
    }
}
