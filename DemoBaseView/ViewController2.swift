//
//  ViewController2.swift
//  DemoBaseView
//
//  Created by Dipanjan on 9/5/18.
//  Copyright © 2018 Dipanjan. All rights reserved.
//

import UIKit

class ViewController2: BaseVC, UITextFieldDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewDidLoad(isSearch: true, vcName: "ViewController2")
        navigationController?.navigationBar.isHidden = true
        
        print("this will be added in new branch 2")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    override func btnMenuAction() {
        print("pressing menu from viewcontroller2")
    }
    override func btnSearchAction() {        
        print("pressing search from viewcontroller2")
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let str = (textField.text! as NSString).replacingCharacters(in: range, with: string)
        return checkUKPhoneNumberFormat(string: string, str: str , txtFieldPhoneNumber : textField )
    }
    
    func checkUKPhoneNumberFormat(string: String?, str: String? , txtFieldPhoneNumber : UITextField) -> Bool{
        let countryCode = "+44 "
        if string == "" {
            return true
        }
        else if str!.count <= 15 {
            if str!.count == 1 {
                txtFieldPhoneNumber.text = countryCode + txtFieldPhoneNumber.text!
            }
            else if str!.count == 9 {
                txtFieldPhoneNumber.text = txtFieldPhoneNumber.text! + " "
            }
            return true
        }
        else{
            return false
        }
    }

}
