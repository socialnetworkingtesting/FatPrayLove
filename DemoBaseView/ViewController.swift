//
//  ViewController.swift
//  DemoBaseView
//
//  Created by Dipanjan on 9/4/18.
//  Copyright © 2018 Dipanjan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewSearch: UIView!
    @IBOutlet weak var btnSearchBack: UIButton!
    @IBOutlet weak var btnMenu: UIButton!
    @IBOutlet weak var buttonSearch: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewSearch.isHidden = true
        btnSearchBack.addTarget(self, action: #selector(searchbackAction), for: UIControlEvents.touchUpInside)
        btnMenu.addTarget(self, action: #selector(menuAction), for: UIControlEvents.touchUpInside)
        buttonSearch.addTarget(self, action: #selector(searchAction), for: UIControlEvents.touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @objc func searchbackAction()
    {
        viewSearch.isHidden = true
    }
    @objc func menuAction()
    {
        print("*******clicking menu********")
    }
    @objc func searchAction()
    {
        viewSearch.isHidden = false
    }

}

