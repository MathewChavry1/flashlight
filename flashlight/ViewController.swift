//
//  ViewController.swift
//  flashlight
//
//  Created by 8h on 9/20/23.
//

import UIKit

class ViewController: UIViewController {
    
    var lightOn = true
    @IBOutlet weak var lightbutton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }
    
    fileprivate func updateUI() {
        if lightOn {
            view.backgroundColor = .white
            lightbutton.setTitle("Off", for: .normal)
        }
        else {
            view.backgroundColor = .black
            lightbutton.setTitle("On", for: .normal)
        }
    }


    @IBAction func lightbutton(_ sender: Any) {
        lightOn.toggle()
        updateUI()
    }
    
}

