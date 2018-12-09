//
//  GAETemplateViewController.swift
//  PopuLaw
//
//  Created by user on 12/9/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class GAETemplateViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func backPressed(_ sender: Any) {
        if let navController = self.navigationController {
            navController.popViewController(animated: true)
        }
    }
    
    @IBAction func templatePressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "GAETemplateFileViewController") as! GAETemplateFileViewController
        self.navigationController?.pushViewController(subscriptionyVC, animated: true)
    }
    
    @IBAction func nextPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "AdvertisementViewController") as! AdvertisementViewController
        self.navigationController?.pushViewController(subscriptionyVC, animated: true)
    }
}
