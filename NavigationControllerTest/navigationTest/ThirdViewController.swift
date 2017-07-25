//
//  ThirdViewController.swift
//  navigationTest
//
//  Created by Fateme' Kazemi on 4/18/1396 AP.
//  Copyright © 1396 Fateme' Kazemi. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var navTitle: UINavigationItem!
    @IBOutlet weak var btGoToHome: UIButton!
    @IBOutlet weak var txtMsg: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="pushToFirst")
        {
            var text:String!
            text=txtMsg.text
            
            (segue.destination as! ViewController).label=text
        }
        
        if(segue.identifier=="back2to3")
        {
            var text:String!
            text=txtMsg.text
            
            (segue.destination as! ViewController).label=text
        }

}
    @IBAction func unwindbutton(_ sender: Any) {
        performSegue(withIdentifier: "unwindToSecond", sender: self)
        
    }
    
    //performSegueWithIdentifier("UnwindToRedSegueID", sender: self)
}
