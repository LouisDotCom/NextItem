//
//  FirstViewController.swift
//  TabbedApp
//
//  Created by LouisDotCom on 8/5/17.
//  Copyright © 2017 LB. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var TextViewItem: UITextView!
    
    

    
    @IBAction func NextItemControl(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //LB: this is where I add border (from http://www.richardhsu.me/posts/2015/01/17/textview-border.html)
        let borderColor : UIColor = UIColor(red: 0.7, green: 0.2, blue: 0.0, alpha: 1.0)
        TextViewItem.layer.borderWidth = 1
        TextViewItem.layer.borderColor = borderColor.cgColor
        TextViewItem.layer.cornerRadius = 5.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

