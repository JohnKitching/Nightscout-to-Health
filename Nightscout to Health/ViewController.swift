//
//  ViewController.swift
//  Nightscout to Health
//
//  Created by John Kitching on 14/04/2020.
//  Copyright © 2020 John Kitching. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myURLText: UITextField!
    
    @IBAction func showBGsTapped(_ sender: Any) {
        print("button tapped")
    }
    
    @IBAction func saveURLTapped(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(myURLText.text, forKey: "MyURL")
     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        let defaultValue = ["MyURL" : ""]
        defaults.register(defaults: defaultValue)
        myURLText.text = defaults.string(forKey: "MyURL")
        getBGs()
        // Do any additional setup after loading the view.
    }


}

