//
//  ViewController.swift
//  RoundingTax
//
//  Created by CheapGo02 on 26/10/2016.
//  Copyright © 2016 CheapGo02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
//        guard let sl11  = am11.text else { return }
//        guard let sl12  = am12.text else { return }
//        guard let sl13  = am13.text else { return }
//        guard let sl21  = am21.text else { return }
//        guard let sl22  = am22.text else { return }
//        guard let sl31  = am31.text else { return }
//        guard let sl32  = am32.text else { return }
//        guard let sl33  = am33.text else { return }
//        guard let sl34  = am34.text else { return }

        
//        var tax:Double = 0
//        var totalprice:Double = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var am11: UITextField!

    @IBOutlet weak var am12: UITextField!
    
    @IBOutlet weak var am13: UITextField!
    
    @IBOutlet weak var am21: UITextField!
    
    @IBOutlet weak var am22: UITextField!
    
    @IBOutlet weak var am31: UITextField!
    
    @IBOutlet weak var am32: UITextField!
    
    @IBOutlet weak var am33: UITextField!
    
    @IBOutlet weak var am34: UITextField!
    
    
    
    @IBAction func output(_ sender: AnyObject)
    {
        if am11.text == "" || am12.text == "" || am13.text == "" || am21.text == "" || am22.text == "" || am31.text == "" || am32.text == "" || am33.text == "" || am34.text == ""
        {
            // create the alert
            let alert = UIAlertController(title: "Alert!!", message: "ktra lai ja trj nhap", preferredStyle: UIAlertControllerStyle.alert)
            
            // add an action (button)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            
            // show the alert
            self.present(alert, animated: true, completion: nil)

        }
        else
        {
        let sl11 = Double(am11.text!)
        let price11:Double = sl11!*12.49
        
        let sl12 = Double(am12.text!)
        let tax12:Double = 10/100
        let price12:Double = sl12!*14.99 + (sl12!*14.99)*tax12
        let prounded12 = roundUp(number: price12, toNearest: 0.05)
        
        let sl13 = Double(am13.text!)
        let price13 = sl13!*0.85
        
        print("thue ban hang \(tax12) , tong so \(price11 + prounded12 + price13)")
        
        //-------
        let sl21 = Double(am21.text!)
        let tax21:Double = 5/100
        let price21:Double = sl21!*10.00 + (sl21!*10.00)*tax21
        let pround21:Double = roundUp(number: price21, toNearest: 0.05)
        
        let sl22 = Double(am22.text!)
        let tax22:Double = 5/100
        let price22:Double = sl22!*47.50 + (sl22!*47.50)*tax22
        let pround22:Double = roundUp(number: price22, toNearest: 0.05)
        
        print("thue ban hang \(tax21 + tax22) , tong so \(pround21 + pround22)")
        
        //-------
        let sl31 = Double(am31.text!)
        let tax31:Double = 5/100
        let price31:Double = sl31!*27.99 + (sl31!*27.99)*tax31
        let pround31:Double = roundUp(number: price31, toNearest: 0.05)
        
        let sl32 = Double(am32.text!)
        let tax32:Double = 10/100
        let price32:Double = sl32!*18.99 + (sl32!*18.99)*tax32
        let pround32:Double = roundUp(number: price32, toNearest: 0.05)
        
        let sl33 = Double(am33.text!)
        let price33:Double = sl33!*9.75
     
        let sl34 = Double(am34.text!)
        let tax34:Double = 5/100
        let price34:Double = sl34!*11.25 + (sl34!*11.25)*tax34
        let pround34:Double = roundUp(number: price34, toNearest: 0.05)
        
         print("thue ban hang \(tax31 + tax32 + tax34) , tong so \(pround31 + pround32 + price33 + pround34)")

        }
        

    }
    
    func roundUp(number: Double, toNearest: Double) -> Double {
        return ceil(number / toNearest) * toNearest
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

