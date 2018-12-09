//
//  WhatHappenViewController.swift
//  PopuLaw
//
//  Created by user on 12/8/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class WhatHappenViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.init(red: 0/255, green: 169/255, blue: 225/255, alpha: 1)
        self.navigationController?.isNavigationBarHidden = true
        
        setupButtonStyle(button: button1)
        setupButtonStyle(button: button2)
        setupButtonStyle(button: button3)
        setupButtonStyle(button: button4)
        setupButtonStyle(button: button5)
    }
    
    func setupButtonStyle(button: UIButton) {
        //button.setTitleColor(UIColor.init(red: 0/255, green: 255/255, blue: 64/255, alpha: 1), for: [])
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.init(red: 0/255, green: 169/255, blue: 225/255, alpha: 1).cgColor
    }

    @IBAction func dtpPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "WhatToDoOrNotViewController") as! WhatToDoOrNotViewController
        self.navigationController?.pushViewController(subscriptionyVC, animated: true)
    }
}
