//
//  ViewController.swift
//  AppCenter Demo
//
//  Created by Ankit Jaiswal on 29/08/20.
//  Copyright © 2020 Ankit Jaiswal. All rights reserved.
//

import UIKit
import AppCenterCrashes
import AppCenterAnalytics

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        MSAnalytics.trackEvent("pressed_login_load")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if MSCrashes.hasCrashedInLastSession() {
            print("APp Crashes")
        }
        MSAnalytics.trackEvent("navigate_to_vc")

    }

    @IBAction func LoginButtonAction(_ sender: Any) {
        MSAnalytics.trackEvent("pressed_login")
    }
    
}

