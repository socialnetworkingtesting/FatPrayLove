//
//  ViewController2.swift
//  DemoBaseView
//
//  Created by Dipanjan on 9/5/18.
//  Copyright © 2018 Dipanjan. All rights reserved.
//

import UIKit

class ViewController2: BaseVC {
    
    
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
