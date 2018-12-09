//
//  CheckAgreeWithoutGAEViewController.swift
//  PopuLaw
//
//  Created by user on 12/9/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class CheckAgreeWithoutGAEViewController: UIViewController {
    @IBOutlet weak var switch1: UISwitch!
    @IBOutlet weak var switch2: UISwitch!
    @IBOutlet weak var switch3: UISwitch!
    @IBOutlet weak var switch4: UISwitch!
    
    @IBOutlet weak var backButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        setupButtonStyle(button: backButton)
        setupButtonStyle(button: nextButton)
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
    
    @IBAction func nextPressed(_ sender: Any) {
        if switch1.isOn && switch2.isOn && switch3.isOn && switch4.isOn {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "MakeDTPNoticeViewController") as! MakeDTPNoticeViewController
            self.navigationController?.pushViewController(subscriptionyVC, animated: true)
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "CallGAEViewController") as! CallGAEViewController
            self.navigationController?.pushViewController(subscriptionyVC, animated: true)
        }
    }
    
}
