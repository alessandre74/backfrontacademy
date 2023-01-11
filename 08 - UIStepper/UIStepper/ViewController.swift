//
//  ViewController.swift
//  UIStepper
//
//  Created by Alessandre Livramento on 08/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var valueLabel: UILabel!

    @IBOutlet var stepper: UIStepper!

    override func viewDidLoad() {
        super.viewDidLoad()
        stepper.minimumValue = 0
        stepper.value = 0
        stepper.maximumValue = 100
        stepper.stepValue = 10
    }

    @IBAction func tappedStepper(_ sender: UIStepper) {
        print(sender.value)
        valueLabel.text = String(Int(sender.value))
    }
}
