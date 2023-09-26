//
//  ApplicationService.swift
//  Copyright © 2019 ElegantMedia. All rights reserved.
//

import Foundation
import UIKit

enum Storyboard: String {
    case Auth
    case Main
}

class ApplicationServiceProvider {
    
    static let shared = ApplicationServiceProvider()
    
    private init() {}
    
    //MARK: Navigation push view Controller
    public func pushToViewController(in sb: Storyboard, for identifier: String, from vc: UIViewController?, data: Any? = nil) {
        
        let storyboard = UIStoryboard(name: sb.rawValue, bundle: nil)
        let destVc = storyboard.instantiateViewController(withIdentifier: identifier)
        
        if destVc is LoginVC && data != nil {
            let _vc = storyboard.instantiateViewController(withIdentifier: identifier) as! LoginVC
            vc?.navigationController?.pushViewController(_vc, animated: true)
        }
        else  if destVc is MobileVC && data != nil {
            let _vc = storyboard.instantiateViewController(withIdentifier: identifier) as! MobileVC
            vc?.navigationController?.pushViewController(_vc, animated: true)
        }
        else {
            vc?.navigationController?.pushViewController(destVc, animated: true)
        }
    }
    
    //MARK: Present view Controller
    public func presentViewController(in sb: Storyboard, for identifier: String, from vc: UIViewController?, style: UIModalPresentationStyle = .overCurrentContext, data: Any? = nil) {
        
        let storyboard = UIStoryboard(name: sb.rawValue, bundle: nil)
        let destVc = storyboard.instantiateViewController(withIdentifier: identifier)
        
        destVc.modalPresentationStyle = style
        
        if destVc is LoginVC && data != nil {
            let _vc = storyboard.instantiateViewController(withIdentifier: identifier) as! LoginVC
            vc?.present(_vc, animated: true, completion: nil)
        }
        
        else if destVc is MobileVC && data != nil{
            let _vc = storyboard.instantiateViewController(withIdentifier: identifier) as! MobileVC
            if let _data = data as? Bool {
                _vc.vm.isMobile = _data
            }
            vc?.present(_vc, animated: true, completion: nil)
        }
        
        else {
            vc?.present(destVc, animated: true, completion: nil)
        }
    }
}

extension String {
    static let AuthNC = NSLocalizedString("AuthNC", comment: "")
    static let HomeNC = NSLocalizedString("HomeNC", comment: "")
    static let MobileVC = NSLocalizedString("MobileVC", comment: "")
    static let LoginVC = NSLocalizedString("LoginVC", comment: "")
    static let OTPVC = NSLocalizedString("OTPVC", comment: "")
    static let NotificationVC = NSLocalizedString("NotificationVC", comment: "")
}
