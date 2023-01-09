//
//  ViewController.swift
//  UISlider
//
//  Created by Alessandre Livramento on 08/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        slider.minimumValue = 0
        slider.value = 0
        slider.maximumValue = 20
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .blue
        slider.thumbTintColor = .green
    }

    @IBAction func tappedSlider(_ sender: UISlider) {
        print(Int(sender.value))
    }
}
