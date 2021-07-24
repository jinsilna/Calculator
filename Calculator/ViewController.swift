//
//  ViewController.swift
//  Calculator
//
//  Created by truemac on 2021/07/21.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var display: UILabel!
    
    var isPlus = false;
    var isMinus = false;
    
    var sum = Int();
    var num = Int();
    var userTyping = false;
    @IBAction func touch1(_ sender: UIButton) {
        
        // func clear
        if( display.text == "0"){
            display.text = ""
        }
        
        let dight = sender.currentTitle!
        print("thouched \(dight) dight");
        if userTyping {
            let textCurrentDisplay = display.text!
            display.text = textCurrentDisplay + dight
        }else{
            display.text = dight
        }
        userTyping = true;
    }
    // C 버튼 기능
    @IBAction func clear(_ sender: Any) {
        display.text = "0"
        sum = 0;
        num = 0;
    }
    
    @IBAction func result(_ sender: Any) {
        if isPlus{
            sum  = sum + Int(display.text!)!
            print("result Plus", sum)
            isPlus = false
            display.text = String(sum)
        }
        
        if isMinus {
            sum  = sum - Int(display.text!)!
            print("result Minus", sum)
            isMinus = false
            display.text = String(sum)
        }
    }
    
    
    @IBAction func plus(_ sender: Any) {
        if(isPlus==false){
            num = Int(display.text!)!
            print("num",num)
            sum = num + sum
            print("sum",sum)
            userTyping = false
            isPlus = true
        }
    }
    
    @IBAction func minus(_ sender: Any) {
        if(isMinus==false){
            num = Int(display.text!)!
            print("num",num)
            sum = num - sum
            print("sum",sum)
            userTyping = false
            isMinus = true
        }
    }
    
    
}

