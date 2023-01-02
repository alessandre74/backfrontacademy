//
//  ViewController.swift
//  ElementosBasicosCurso
//
//  Created by Alessandre Livramento on 31/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var bemVindoLabel: UILabel!

    @IBOutlet var nameTextField: UITextField!

    @IBOutlet var passwordTextField: UITextField!

    @IBOutlet var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        bemVindoLabel.text = "Teste UILabel"
    }

    @IBAction func tappedLoginButton(_ sender: UIButton) {
        print("Botão pressionado!!")
        view.backgroundColor = .purple
    }
}
