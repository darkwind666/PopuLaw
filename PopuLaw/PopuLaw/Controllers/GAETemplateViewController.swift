//
//  GAETemplateViewController.swift
//  PopuLaw
//
//  Created by user on 12/9/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class GAETemplateViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var templateButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        //self.view.backgroundColor = UIColor.init(red: 0/255, green: 169/255, blue: 225/255, alpha: 1)

        setupButtonStyle(button: backButton)
        setupButtonStyle(button: templateButton)
        setupButtonStyle(button: nextButton)
    }
    
    func setupButtonStyle(button: UIButton) {
        //button.setTitleColor(UIColor.init(red: 0/255, green: 255/255, blue: 64/255, alpha: 1), for: [])
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.init(red: 0/255, green: 169/255, blue: 225/255, alpha: 1).cgColor
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
        let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "SendInsurenceNoticeViewController") as! SendInsurenceNoticeViewController
        self.navigationController?.pushViewController(subscriptionyVC, animated: true)
    }
}
