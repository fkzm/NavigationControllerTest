//
//  SecondViewController.swift
//  navigationTest
//
//  Created by Fateme' Kazemi on 4/18/1396 AP.
//  Copyright © 1396 Fateme' Kazemi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lablUnwind: UILabel!
    @IBOutlet weak var lblShow: UILabel!
    @IBOutlet weak var lblState: UILabel!
    private var data:String?
    var label:String?
    var text = "unwind"
    override func viewDidLoad() {
        super.viewDidLoad()
        if let label = data
        {lblState.text=data}
       
    }
    func setData(st:String)
    {
        self.data=st
    }
    override func viewDidAppear(_ animated: Bool) {
        //lblShow.text=label
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    @IBAction func unwindToSecond(segue: UIStoryboardSegue) {
        
        self.lablUnwind.text=(segue.source as! ThirdViewController).navTitle.title
    }

    

}
