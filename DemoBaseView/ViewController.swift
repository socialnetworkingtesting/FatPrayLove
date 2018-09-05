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
        navigationController?.navigationBar.isHidden = true
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

    @IBAction func btnPushTonextVC(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(nextvc, animated: true)
    }
}

