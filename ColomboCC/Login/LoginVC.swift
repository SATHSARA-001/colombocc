//
//  LoginVC.swift
//  ColomboCC
//
//  Created by Sathsara Dharmarathna on 2023-09-23.
//

import UIKit

class LoginVC: UIViewController {
    
    let vm = LoginVM()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func didClickGetStart(_ sender: Any) {
        ApplicationServiceProvider.shared.presentViewController(in: .Auth, for: .MobileVC, from: self, style: .formSheet, data:true )
    }

}
