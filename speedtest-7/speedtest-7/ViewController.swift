//
//  ViewController.swift
//  speedtest-7
//
//  Created by Safeyah on 6/13/20.
//  Copyright © 2020 kuwaitcodes.cohort2. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var name = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let name = sender as! String
        let vc = segue.destination as! DetailVC
        vc.name = name 
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        name = textField.text!
       
        if textField.text!.count >= 2{
             performSegue(withIdentifier: "goToNext", sender: name)

        }
        else{
            print("لا تستعبط ")
        }
    }
    
    // Hint: `performSegue` is the way
    

}

