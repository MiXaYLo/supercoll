//
//  ViewController.swift
//  Multiplayer
//
//  Created by Mehdi Nuruzade on 15/02/16.
//  Copyright © 2016 Mehdi Nuruzade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var txtInput : UITextField!
    @IBOutlet weak var startBtn: UIButton!
    
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var addLbl: UILabel!
    
    @IBAction func OnstartBtnPressed (sender: UIButton){
        logoImg.hidden = true
        txtInput.hidden = true
        startBtn.hidden = true
        
        addBtn.hidden = false
        addLbl.hidden = false
        
    }

}

