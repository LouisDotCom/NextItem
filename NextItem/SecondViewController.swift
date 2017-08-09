//
//  SecondViewController.swift
//  TabbedApp
//
//  Created by LouisDotCom on 8/5/17.
//  Copyright © 2017 LB. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var ItemTableView: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(Items.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let prototype = UITableViewCell(style:UITableViewCellStyle.default, reuseIdentifier: "prototype")
        prototype.textLabel?.text = Items[indexPath.row]
        return(prototype)
        
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            Items.remove(at: indexPath.row)
            ItemTableView.reloadData()
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var input: UITextField!
    
    
    @IBAction func AddTypedItem(_ sender: Any) {
        if (input.text != "")
        {
            Items.append(input.text!)
            input.text = ""
        }
    }
    
    
   
    override func viewDidAppear(_ animated: Bool) {
        ItemTableView.reloadData()
    }

}
