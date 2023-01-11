//
//  Tela02VC.swift
//  NavigationAvancada
//
//  Created by Alessandre Livramento on 09/01/23.
//

import UIKit

class Tela02VC: UIViewController {
    @IBOutlet var nameLabel: UILabel!

    let name: String?

    init?(coder: NSCoder, name: String) {
        self.name = name
        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
    }
}
