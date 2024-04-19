//
//  ViewController.swift
//  knowledgePlus
//
//  Created by english on 2024-02-16.
//

import UIKit

class ViewController: UIViewController {

    static var title: String = ""
        
    @IBAction func btnpressed(_ sender: UIButton) {
        ViewController.title = sender.titleLabel!.text!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

