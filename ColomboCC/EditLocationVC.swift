//
//  EditLocationVC.swift
//  ColomboCC
//
//  Created by Sathsara Dharmarathna on 2023-10-01.
//

import UIKit

class EditLocationVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func adjustPin(_ sender: Any) {
        ApplicationServiceProvider.shared.presentViewController(in: .Auth, for: .ConfirmLocationVC, from: self, style: .formSheet, data:true )
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
