//
//  GoHospitalViewController.swift
//  PopuLaw
//
//  Created by user on 12/9/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class GoHospitalViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        setupButtonStyle(button: backButton)
    }
    
    func setupButtonStyle(button: UIButton) {
        button.setTitleColor(UIColor.init(red: 0/255, green: 255/255, blue: 64/255, alpha: 1), for: [])
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.init(red: 0/255, green: 255/255, blue: 64/255, alpha: 1).cgColor
    }
    
    @IBAction func backPressed(_ sender: Any) {
        if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }
    }
}
