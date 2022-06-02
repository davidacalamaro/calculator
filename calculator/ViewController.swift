//
//  ViewController.swift
//  calculator
//
//  Created by david on 10/6/21.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var output: UILabel! //THIS IS THE LABEL
    var calc = 0.0
    var sec = 0.0
    var op = false
    var p = false
    var m = false
    var t = false
    var d = false
    var quack = false
    var onenine = false
    var plusc = 0
    var minusc = 0
    var timesc = 0
    var dividec = 0
    var cc = 0
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        output.text = "\(calc)"
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator)
    {
        print("rotated")
        //change this if you have time
    }
   
    
   func ifStates(num: Double)
    {
        //there is an issue here because the second number keeps getting multiplied by 10 instead of just being the number
        
        
        if op == false
        {
        calc = (calc*10) + num
        }
       
        else if dividec > 1 || plusc == 0 || minusc == 0 || timesc == 0
        {
            sec = (sec*10) + num
        }
        
        else
        {
            sec = (sec*10) + num
        }
        
    }
    
    func math()
    {
        if p == true //plus
        {
            output.text = "\(calc) + \(sec)"
           // calc = calc+sec
            print(calc)
        }
        
    
       else if m == true //minus
        {
            output.text = "\(calc) - \(sec)"
           // calc = calc-sec
       }
        
    
        else if t == true //times
        {
            output.text = "\(calc) x \(sec)"
           // calc = calc*sec
            
        }
    
       else if d == true //divide
        {
            output.text = "\(calc) ÷ \(sec)"
          // calc = calc/sec
        }
    
        else
        {
            output.text = "\(calc)"
        }
    
    }
    
    @IBAction func seven(_ sender: UITapGestureRecognizer)
    {
        ifStates(num: 7)
        math()
    }
    
    
    @IBAction func eight(_ sender: UITapGestureRecognizer)
    {
        ifStates(num: 8)
        math()
    }
    
    
    @IBAction func nine(_ sender: UITapGestureRecognizer)
    {
        ifStates(num: 9)
        math()
    }
    
    
    @IBAction func four(_ sender: UITapGestureRecognizer)
    {
        ifStates(num: 4)
        math()
    }
    
    
    @IBAction func five(_ sender: UITapGestureRecognizer)
    {
        ifStates(num: 5)
        math()
    }
    
    
    @IBAction func six(_ sender: UITapGestureRecognizer)
    {
        ifStates(num: 6)
        math()
    }
    
    
    @IBAction func one(_ sender: UITapGestureRecognizer)
    {
        ifStates(num: 1)
        math()
    }
    
    
    @IBAction func two(_ sender: UITapGestureRecognizer)
    {
        ifStates(num: 2)
        math()
    }
    
    
    @IBAction func three(_ sender: UITapGestureRecognizer)
    {
        ifStates(num: 3)
        math()
    }
    
    
    @IBAction func zero(_ sender: UITapGestureRecognizer)
    {
        ifStates(num: 0)
        math()
    }
    /////////////////////////////// operators
    
    @IBAction func clear(_ sender: UITapGestureRecognizer)
    {
        output.text = "\(0.0)"
        calc = 0.0
        sec = 0.0
        op = false
        p = false
        m = false
        t = false
        d = false
        plusc = 0
        minusc = 0
        timesc = 0
        dividec = 0
    }
    
    
    @IBAction func plus(_ sender: UITapGestureRecognizer)
    {
       plusc += 1
        p = true
        op = true
        
        if sec != 0.0
        {
        output.text = "\(calc) + \(sec)"
           // calc = calc+sec
        }
   
        else
        {
            output.text = "\(calc) +"
        }
        print("\(calc)")
        if plusc > 1
        {
            calc = calc/sec
            output.text = "\(calc) +"
            print(sec)
        }
    print(plusc)
    }
    
    @IBAction func minus(_ sender: UITapGestureRecognizer)
    {
      minusc += 1
        m = true
        op = true
       // calc = calc-sec
        if sec != 0.0
        {
        output.text = "\(calc) - \(sec)"
        }
   
        else
        {
            output.text = "\(calc) -"
        }
        if minusc > 1
        {
            calc = calc/sec
            output.text = "\(calc) -"
            print(sec)
        }
        
        
    }
    
    
    
    @IBAction func times(_ sender: UITapGestureRecognizer)
    {
       timesc += 1
        t = true
        op = true
       // calc = calc*sec
        if sec != 0.0
        {
        output.text = "\(calc) x \(sec)"
        }
   
        else
        {
            output.text = "\(calc) x"
        }
    print("times 1 \(calc)    sec \(sec)")
    
        if timesc > 1
        {
            calc = calc/sec
            output.text = "\(calc) x"
            print(sec)
        }
    
    }
    
    /////////////////////////////////////////////////////////////////
   func ifOPTrue()
    {
        if p == true
        {
            calc = calc + sec
        }
        
        else if m == true
        {
            calc = calc-sec
        }
        
        else if t == true
        {
            calc = calc*sec
        }
        
        else if d == true
        {
            calc = calc / sec
        }
    }
  
    func eqButton()
    {
        output.text = "\(calc)"
        sec = 0.0
        op = false
        p = false
        m = false
        t = false
        d = false
       plusc = 0
        timesc = 0
        dividec = 0
        minusc = 0
    }
   
    func trueEquals()
    {
        ifOPTrue()
        eqButton()
    }
    
    
    @IBAction func equals(_ sender: UITapGestureRecognizer)
    {
       trueEquals()
    }
   ///////////////////////////////////////////////////////////////////////
    
    @IBAction func divide(_ sender: UITapGestureRecognizer)
    {
        print(sec)
        dividec += 1
        op = true
        d = true
       // calc = (calc)/sec
        if sec != 0.0
        {
        output.text = "\(calc) ÷ \(sec)"
        }
   
        else
        {
            output.text = "\(calc) ÷"
        }
        //|| everything else //i think this is the number of taps +1 AFTER??? 0 doesnt work
        
        if dividec > 1
        {
            
            calc = calc/sec
            output.text = "\(calc) ÷"
            print(sec)
           // ifcc(whatC: dividec, operator: "÷")
        }
    
//        func ifcc(whatC: Int,operator: String)
//        {
//            if whatC > 1
//            {
//
//                calc = calc/sec
//                output.text = "\(calc) \(operator)"
//                print(sec)
//            }
//        }
        
        
        
        
        
        
        
        
        
    }
     
    //quack
    
    //end of operators
    
    

}

