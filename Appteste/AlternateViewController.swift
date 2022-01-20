//
//  AlternateViewController.swift
//  Appteste
//
//  Created by Felipe Yuiti on 19/01/22.
//

import UIKit

class viewController: UIViewController{
    
    @IBOutlet weak var newNextTable: UILabel!
    
    var segueText: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
            newNextTable.text = segueText
        
    }
    
}
