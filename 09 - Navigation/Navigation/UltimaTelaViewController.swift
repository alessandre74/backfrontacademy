//
//  UltimaTelaViewController.swift
//  Navigation
//
//  Created by Alessandre Livramento on 09/01/23.
//

import UIKit

class UltimaTelaViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func tappedGoFirstScreen(_ sender: UIBarButtonItem) {
//        navigationController?.popViewController(animated: true)
        navigationController?.popToRootViewController(animated: true)
    }
}
