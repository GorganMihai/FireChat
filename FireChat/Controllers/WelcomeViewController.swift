//
//  ViewController.swift
//  FireChat
//
//  Created by Mihai Gorgan on 21.09.2022.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var myTypeWriterLabel: CLTypingLabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTypeWriterLabel.text = "🔥FireChat"
    }


}

