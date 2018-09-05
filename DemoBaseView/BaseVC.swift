//
//  BaseVC.swift
//  DemoBaseView
//
//  Created by Dipanjan on 9/5/18.
//  Copyright © 2018 Dipanjan. All rights reserved.
//

import UIKit

class BaseVC: UIViewController {
    var customNavBarView = UIView()
    var menuButton = UIButton()
    var buttonSearch = UIButton()
    var headerName = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupViewDidLoad(isSearch : Bool, vcName : String)
    {
        customNavBarView.layer.frame = CGRect(x: 0, y: 20, width: self.view.layer.frame.width, height: 80)
        customNavBarView.backgroundColor = UIColor.black
        self.view.addSubview(customNavBarView)
        headerName.layer.frame = CGRect(x: 0, y: 0, width: self.view.layer.frame.width , height: 80)
        headerName.backgroundColor = UIColor.clear
        headerName.textColor = UIColor.white
        headerName.text = vcName
        headerName.textAlignment = .center
        customNavBarView.addSubview(headerName)
        menuButton.layer.frame = CGRect(x: 20, y: 20, width: 40, height: 40)
        menuButton.backgroundColor = UIColor.clear
        menuButton.setImage(#imageLiteral(resourceName: "top-butt-menu"), for: UIControlState.normal)
       // menuButton.titleLabel?.textColor = UIColor.green
       // menuButton.setTitle("Menu", for: UIControlState.normal)
        customNavBarView.addSubview(menuButton)
        menuButton.addTarget(self, action: #selector(btnMenuAction), for: UIControlEvents.touchUpInside)
        if isSearch{
            buttonSearch.layer.frame = CGRect(x: self.view.layer.frame.width - 60, y: 20, width: 40, height: 40)
            buttonSearch.backgroundColor = UIColor.white
            buttonSearch.setTitle("Search", for: UIControlState.normal)
            buttonSearch.titleLabel?.textColor = UIColor.red
            customNavBarView.addSubview(buttonSearch)
            buttonSearch.addTarget(self, action: #selector(btnSearchAction), for: UIControlEvents.touchUpInside)
        }
       
        
    }

    @objc func btnMenuAction(){
        
    }
    @objc func btnSearchAction(){
        
    }

}
