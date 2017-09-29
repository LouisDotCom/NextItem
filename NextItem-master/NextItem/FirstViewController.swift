//
//  FirstViewController.swift
//  TabbedApp
//
//  Created by LouisDotCom on 8/5/17.
//  Copyright © 2017 LB. All rights reserved.
//

import UIKit

var Items = [
    "Call someone from Contacts, not spoken with in the last month", "Drop down for 20 pushups and 20 sit-ups", "Motion is lotion: do ten minutes of PT", "Run (fast mile or 30 minute intervals)", "Run (5k or 10k", "Browse a copy of The Rio Grande Sun", "Write 200-400 words in novel", "Work on 505 yard", "Stop and pray for 15 minutes", "Sing a song", "Walk through the hood", "Drink a liter (of water)", "Eat some veggies", "Read Kindle for an hour", "Read current hard copy book(s) for an hour", "Dust / vacuum / mop / windows / deck 505", "Listen to Spanish lesson", "Play 1/2 hour guitar (consider Sólo le pido and Jesu, Joy of Man's Desire)"]


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


