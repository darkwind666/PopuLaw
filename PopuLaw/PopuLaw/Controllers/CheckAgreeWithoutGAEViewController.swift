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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
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
