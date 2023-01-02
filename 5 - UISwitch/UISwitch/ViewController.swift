//
//  ViewController.swift
//  UISwitch
//
//  Created by Alessandre Livramento on 01/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var stateSwitch: UISwitch!

    override func viewDidLoad() {
        super.viewDidLoad()
        stateSwitch.isOn = true
        stateSwitch.onTintColor = .blue
    }

    @IBAction func tappedSwitchAction(_ sender: UISwitch) {
        print(sender.isOn)

        if sender.isOn {
            view.backgroundColor = .green
        } else {
            view.backgroundColor = .red
        }
    }
}
