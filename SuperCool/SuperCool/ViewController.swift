//
//  ViewController.swift
//  SuperCool
//
//  Created by Mehdi Nuruzade on 13/01/16.
//  Copyright © 2016 Mehdi Nuruzade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var coolLogo: UIImageView!
    @IBOutlet weak var coolBg: UIImageView!
    @IBOutlet weak var notCoolButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func makecool(sender: AnyObject) {
        
        coolLogo.hidden = false
        coolBg.hidden = false
        notCoolButton.hidden = true
    }

}

