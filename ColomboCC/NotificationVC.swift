//
//  NotificationVC.swift
//  ColomboCC
//
//  Created by Sathsara Dharmarathna on 2023-09-24.
//

import UIKit

class NotificationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func didEnableNotifications(_ sender: Any) {
        ApplicationServiceProvider.shared.presentViewController(in: .Auth, for: .EditLocationVC, from: self, style: .formSheet, data:true )

    }

}
