//
//  ViewController.swift
//  navigationTest
//
//  Created by Fateme' Kazemi on 4/18/1396 AP.
//  Copyright © 1396 Fateme' Kazemi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
   
    @IBOutlet weak var lbUnwind: UILabel!
    @IBOutlet weak var lblShow: UILabel!
    @IBOutlet weak var mState: UISwitch!
    var label:String?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        lblShow.text=label
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="pushToSecond")
        {
            var state:String!
            if(mState.isOn)
            {
                state="ON"
            }
            else
            {
                state="OFF"
            }
            
           // (segue.destination as! SecondViewController).data=state
            (segue.destination as! SecondViewController).setData(st: state)
        }
    }
    
    @IBAction func unwindToFirst(segue: UIStoryboardSegue) {
        
        self.lbUnwind.text=(segue.source as! SecondViewController).text
        
    }
}

