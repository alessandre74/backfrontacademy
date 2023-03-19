//
//  LoginVC.swift
//  PrimeiroProjetoViewCode
//
//  Created by Alessandre Livramento on 18/03/23.
//

import UIKit

class LoginVC: UIViewController {
    var loginScreen: LoginScreen?

    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loginScreen?.delegate(delegate: self)
        loginScreen?.configTextFieldDelegate(delegate: self)
    }
}

extension LoginVC: LoginScreenProtocol {
    func tappedLoginButton() {
        print("chegou na VC")
        let vc: HomeVC = HomeVC()
        // Caso queira que a VC seja uma UINavigationController
//        let nav = UINavigationController(rootViewController: vc)
        present(vc, animated: true)
//        navigationController?.pushViewController(vc, animated: true)
    }
 
}

extension LoginVC: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print(#function)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        let email: String = loginScreen?.emailTextField.text ?? ""
        let passwordTextField: String = loginScreen?.passwordTextField.text ?? ""
        
        if !email.isEmpty && !passwordTextField.isEmpty {
            print("Botao habilitado")
            loginScreen?.loginButton.isEnabled = true
            loginScreen?.loginButton.backgroundColor = .darkGray
        } else {
            print("Botao desabilitado")
            loginScreen?.loginButton.isEnabled = false
            loginScreen?.loginButton.backgroundColor = .darkGray.withAlphaComponent(0.6)
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        return false
    }
    
}
