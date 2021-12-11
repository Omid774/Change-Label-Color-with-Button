//
//  ViewController.swift
//  Change Label Color with Button
//
//  Created by Omid Heydarzadeh on 12/11/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // for Label
        let currentLableFrame = myLabel.frame
        myLabel.frame = CGRect (x: currentLableFrame.origin.x + 45,
                                y: currentLableFrame.origin.y + 250,
                                width: currentLableFrame.size.width + 200,
                                height: currentLableFrame.size.height + 200)
        myLabel.backgroundColor = .red
        myLabel.textAlignment = .center
        myLabel.text = "⭐️"
        let myLabelFont = UIFont(name: "HelveticaNeue", size: 130)
        myLabel.font = myLabelFont
        
        // for Button
        let currentButtonFrame = myButton.frame
        myButton.frame = CGRect(x: currentButtonFrame.origin.x + 95,
                                y: currentButtonFrame.origin.y + 500,
                                width: currentButtonFrame.size.width + 100,
                                height: currentButtonFrame.height + 100)
        myButton.backgroundColor = .yellow
        myButton.setTitle("Change", for: .normal)
        
        
    }
    @IBAction func myButton(_ sender: Any) {
        if myLabel.backgroundColor == .red {
            myLabel.backgroundColor = .yellow
        } else {
            myLabel.backgroundColor = .red
        }
    }
    
    

}

