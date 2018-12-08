//
//  WhatHappenViewController.swift
//  PopuLaw
//
//  Created by user on 12/8/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class WhatHappenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func dtpPressed(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "WhatToDoOrNotViewController") as! WhatToDoOrNotViewController
        self.navigationController?.pushViewController(subscriptionyVC, animated: true)
    }
}
