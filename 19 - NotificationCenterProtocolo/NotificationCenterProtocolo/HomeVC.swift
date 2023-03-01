//
//  ViewController.swift
//  NotificationCenterProtocolo
//
//  Created by Alessandre Livramento on 21/02/23.
//

import SwiftUI
import UIKit

class HomeVC: UIViewController {
    var homeScreen: HomeScreen?

    override func loadView() {
        homeScreen = HomeScreen()
        view = homeScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        homeScreen?.delegate(delegate: self)
//        configObserver()
    }

//    func configObserver() {
//        NotificationCenter.default.addObserver(self, selector: #selector(updateImac(notification:)), name: Notification.Name("imac"), object: nil)
//        NotificationCenter.default.addObserver(self, selector: #selector(updateMabook(notification:)), name: Notification.Name("macbook"), object: nil)
//    }
//
//    @objc func updateImac(notification: NSNotification) {
//        homeScreen?.logoImageView.image = UIImage(named: "imac_pro")
//        homeScreen?.descriptionLabel.text = "Imac das galaxias"
//        view.backgroundColor = .cyan
//    }
//
//    @objc func updateMabook(notification: NSNotification) {
//        homeScreen?.logoImageView.image = UIImage(named: "macbook_pro")
//        homeScreen?.descriptionLabel.text = "Macbook Pro"
//        view.backgroundColor = .red
//    }
}

extension HomeVC: HomeScreenProtocol {
    func tappedChosseButton() {
        let vc = SelectionVC()
        vc.modalPresentationStyle = .fullScreen
        vc.delegate(delegate: self)
        present(vc, animated: true)
    }
}

extension HomeVC: SelectionVCProtocol {
    func updateImac() {
        homeScreen?.logoImageView.image = UIImage(named: "imac_pro")
        homeScreen?.descriptionLabel.text = "Imac das galaxias"
        view.backgroundColor = .cyan
    }

    func updateMacbook() {
        homeScreen?.logoImageView.image = UIImage(named: "macbook_pro")
        homeScreen?.descriptionLabel.text = "Macbook Pro"
        view.backgroundColor = .red
    }
}

struct HomeVC_Previes: PreviewProvider {
    static var previews: some View {
        VCPreview {
            HomeVC()
        }
        .ignoresSafeArea()
        .preferredColorScheme(.dark)
    }
}
