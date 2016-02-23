//
//  ViewController.swift
//  Multiples
//
//  Created by Mehdi Nuruzade on 17/02/16.
//  Copyright © 2016 Mehdi Nuruzade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    func keyboardtype(){
        self.inputTxt.keyboardType = UIKeyboardType.PhonePad
    }
    
    
    var maxnum = 250
    var currentnum = 0
    var result = 0
    var mult = 0
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var inputTxt: UITextField!
    @IBOutlet weak var startBTn: UIButton!
    
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    
    func isGameover() ->Bool{
        if result > maxnum{
            return true
            
        }else{
            return false
        }
    }
    
    func RestartGame (){
        currentnum = 0
        result = 0
        mult = 0
        resultLbl.text = "Press ADD to add "
        
        logoImg.hidden = false
        inputTxt.hidden = false
        startBTn.hidden = false
        
        resetBtn.hidden = true
        addBtn.hidden = true
        resultLbl.hidden =  true
    }
    
    @IBAction func onAddbuttonPressed (sender: UIButton!){
        result = mult + currentnum
        resultLbl.text = "\(mult) + \(currentnum) = \(result) "
        mult = result
        if isGameover(){
            RestartGame()
            
        }
       
        
        
    }
    
    @IBAction func OnResetButtonPressed (sender: UIButton!){
       RestartGame()
        
    }
    
        @IBAction func OnStartButtonPressed(sender: UIButton!){
            logoImg.hidden = true
            inputTxt.hidden = true
            startBTn.hidden = true
            
            resetBtn.hidden = false
            addBtn.hidden = false
            resultLbl.hidden =  false
        
            if inputTxt.text != nil && inputTxt.text != ""{
                currentnum = Int(inputTxt.text!)!
                maxnum = 250
                resultLbl.text = "Press ADD to add "
                }
            }
    
        
   }

