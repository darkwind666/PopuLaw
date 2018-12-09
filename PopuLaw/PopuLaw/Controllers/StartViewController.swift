//
//  ViewController.swift
//  PopuLaw
//
//  Created by user on 12/8/18.
//  Copyright © 2018 user. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //self.view.backgroundColor = UIColor.init(red: 0/255, green: 169/255, blue: 225/255, alpha: 1)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTap(_:)))
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc
    func didTap(_ gesture: UIPanGestureRecognizer) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let subscriptionyVC = storyboard.instantiateViewController(withIdentifier: "WhatHappenViewController") as! WhatHappenViewController
        subscriptionyVC.modalPresentationStyle = .overCurrentContext
        DispatchQueue.main.async {
            let navigationController = UINavigationController(rootViewController: subscriptionyVC)
            self.present(navigationController, animated: true, completion: nil)
        }
    }


}

