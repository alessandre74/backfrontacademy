//
//  ViewController.swift
//  AppBackFront
//
//  Created by Alessandre Livramento on 19/02/23.
//

import SwiftUI
import UIKit

class LoginVC: UIViewController {
    var loginScreen: LoginScreen?

    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

struct LoginVC_Previews: PreviewProvider {
    static var previews: some View {
        VCPreview {
            LoginVC()
        }
        .ignoresSafeArea()
    }
}
