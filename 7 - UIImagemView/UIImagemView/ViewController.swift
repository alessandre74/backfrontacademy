//
//  ViewController.swift
//  UIImagemView
//
//  Created by Alessandre Livramento on 08/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var logoImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // logoImageView.image = UIImage(named: "imagemTeste")
        logoImageView.image = UIImage(systemName: "brain.head.profile")
        logoImageView.tintColor = .green
        logoImageView.contentMode = .scaleAspectFit
    }
}
