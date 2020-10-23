//
//  ViewController.swift
//  movielistapp
//
//  Created by user172317 on 10/22/20.
//  Copyright © 2020 Kalev Aguirre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var passwordInputField: UITextField!
    @IBOutlet weak var userInputField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
     }

    @IBAction func loginButtonPressed(_ sender: Any) {
        let username = userInputField.text;
        let password = passwordInputField.text;
        print("Logging in")
        if(username == "admin" && password == "password"){
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            let mainTabBarController = storyBoard.instantiateViewController(withIdentifier: "MainTabBarController")
            mainTabBarController.modalPresentationStyle = .fullScreen
            self.present(mainTabBarController, animated:true, completion:nil)
            
        }
    }
}

		
	
		

