//
//  MobileVC.swift
//  ColomboCC
//
//  Created by Sathsara Dharmarathna on 2023-09-23.
//

import UIKit

class MobileVC: UIViewController {
    
    let vm = MobileVM()
    @IBOutlet weak var popUpDilogBox: UIView!
    @IBOutlet weak var mobileStack: UIStackView!
    @IBOutlet weak var otpStack: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        popUpDilogBox.isHidden = false
        if(vm.isMobile){
            otpStack.isHidden = true
            mobileStack.isHidden = false
        }else{
            otpStack.isHidden = false
            mobileStack.isHidden = true
        }
    }
    
    func setupUI(){
        popUpDilogBox.layer.cornerRadius = 30
        popUpDilogBox.layer.masksToBounds = true
    }
    
    @IBAction func didClickGoNext(_ sender: Any) {
        otpStack.isHidden = false
        mobileStack.isHidden = true
    }
    
    @IBAction func go(_ sender: Any) {
        ApplicationServiceProvider.shared.presentViewController(in: .Auth, for: .NotificationVC, from: self, style: .formSheet, data:true )
    }
}
