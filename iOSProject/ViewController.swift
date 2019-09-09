//
//  ViewController.swift
//  iOSProject
//
//  Created by Magdalena on 08/09/2019.
//  Copyright © 2019 Magdalena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var _username: UITextField!
    @IBOutlet weak var _pasword: UITextField!
    @IBOutlet weak var _login_button: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func Login_button(_ sender: Any) {
        let username = _username.text
        let password = _pasword.text
        
        if(username == "" || password == "")
        {
            let alert = UIAlertController(title: "Invaild", message: "Złe hasło i login", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK",style:UIAlertAction.Style.default,handler: nil))
            self.present(alert, animated: true)

        }

    }
}

