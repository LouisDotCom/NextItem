//
//  FirstViewController.swift
//  TabbedApp
//
//  Created by LouisDotCom on 8/5/17.
//  Copyright © 2017 LB. All rights reserved.
//

import UIKit

var Items = [
    "1-Call someone from Contacts, someone you haven't spoken with in the last month", "2-Drop down and give me 20 pushups and 20 sit-ups", "3-Motion is lotion: do ten minutes of PT, right now", "4-Run 1 fast mile", "5-Run 30 minute intervals", "6-Run a 5k", "7-Run a 10k", "8-Run 10 miles", "9-Browse a copy of The Rio Grande Sun", "10-Write 200 words in novel"]


class FirstViewController: UIViewController {

    @IBOutlet weak var TextViewItem: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //LB: this is where I add border (from http://www.richardhsu.me/posts/2015/01/17/textview-border.html)
        let borderColor : UIColor = UIColor(red: 0.7, green: 0.2, blue: 0.0, alpha: 1.0)
        TextViewItem.layer.borderWidth = 1
        TextViewItem.layer.borderColor = borderColor.cgColor
        TextViewItem.layer.cornerRadius = 5.0
    }
    
    @IBAction func NextItemControl(_ sender: UIButton) {
        // Display a random item
        
        // Note that arc3random_uniform (which is a standard BSD function for generating random numbers) expects and returns a UInt32 (a 32-bit unsigned integer value type), but Swift arrays are index using Int types, so we have to convert between them using UInt32() and Int():
        let numItems = UInt32(Items.count)
        let randomIndex = Int(arc4random_uniform(numItems))
        
        TextViewItem.text=(" \(Items[randomIndex]) ")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


