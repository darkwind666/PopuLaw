//
//  InjuredPeopleViewController.swift
//  PopuLaw
//
//  Created by user on 12/8/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class InjuredPeopleViewController: UIViewController {
    
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var yesButton: UIButton!
    
    @IBOutlet weak var noButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        //self.view.backgroundColor = UIColor.init(red: 0/255, green: 169/255, blue: 225/255, alpha: 1)

        setupButtonStyle(button: yesButton)
        setupButtonStyle(button: nextButton)
        setupButtonStyle(button: noButton)
    }
    
    func setupButtonStyle(button: UIButton) {
        //button.setTitleColor(UIColor.init(red: 0/255, green: 255/255, blue: 64/255, alpha: 1), for: [])
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.init(red: 0/255, green: 169/255, blue: 225/255, alpha: 1).cgColor
    }
    
    @IBAction func yesPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "YesInjuredPeopleViewController") as! YesInjuredPeopleViewController
        self.navigationController?.pushViewController(subscriptionyVC, animated: true)
    }
    
    @IBAction func noPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "CheckAgreeWithoutGAEViewController") as! CheckAgreeWithoutGAEViewController
        self.navigationController?.pushViewController(subscriptionyVC, animated: true)
    }
    
    @IBAction func backPressed(_ sender: Any) {
        if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }
    }
}
