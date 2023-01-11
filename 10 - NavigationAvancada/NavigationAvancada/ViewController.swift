//
//  ViewController.swift
//  NavigationAvancada
//
//  Created by Alessandre Livramento on 09/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var nameTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedGoScreenButton(_ sender: UIButton) {
        // MARK: Metodo simples de navegação

//        let vc: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(withIdentifier: "Tela02VC") as? Tela02VC
//        // Abordagem para aprensentar um moda/
//        // vc?.modalPresentationStyle = .fullScreen
//        // present(vc ?? UIViewController(), animated: true)
//
//        // Abordagem para chamr uma NavigationController
//
//        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)

        // MARK: Transitando dados entre telas

        let vc: Tela02VC? = UIStoryboard(name: "Tela02VC", bundle: nil).instantiateViewController(identifier: "Tela02VC") { coder in
            Tela02VC(coder: coder, name: self.nameTextField.text ?? "")
        }

        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}
