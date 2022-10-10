//
//  RegisterViewController.swift
//  FireChat
//
//  Created by Mihai Gorgan on 07.10.2022.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text{
          Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
              
              if let e = error{
                  print("...........................//////")
                  print(e.localizedDescription)
              }else{
                  
                  //navigate to the chat
                  self.performSegue(withIdentifier: "FromRegisterToChat", sender: self)
                  
              }
          }
          
        
    }
    
    
}
}
