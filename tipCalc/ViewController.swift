//
//  ViewController.swift
//  tipCalc
//
//  Created by Naman Priyadarshi on 6/27/15.
//  Copyright (c) 2015 Naman Priyadarshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var billAmt: UITextField!
    @IBOutlet var tipPer: UITextField!
    @IBOutlet var tipLabel: UILabel!
    @IBOutlet var totalLabel: UILabel!
    @IBOutlet var tipAmt: UITextField!
    @IBOutlet var totalAmt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func calcTip(bill: Float, per: Float) -> Float{
        return bill*per
    }
    func getTotal(bill: Float,tip: Float)->Float{
        return bill+tip
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submit(sender: UIButton) {
        var usrBill: Float = (billAmt.text as NSString).floatValue
        var usrTip: Float = (tipPer.text as NSString).floatValue
        var tipValue = calcTip(usrBill, per: (usrTip/100))
        tipAmt.text = "\(Float(round(tipValue*100)/100))"
        var total = getTotal(usrBill, tip:tipValue)
        totalAmt.text = "\(Float(round(total*100)/100))"
        
        
        
        
    }

}

