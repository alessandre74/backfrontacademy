//
//  ViewPreview.swift
//  AppBackFront
//
//  Created by Alessandre Livramento on 21/02/23.
//

import SwiftUI

struct ViewPreview: UIViewControllerRepresentable {
    let vc: UIViewController

    init(_ viewController: UIViewController) {
        vc = viewController
    }

    func makeUIViewController(context: Context) -> some UIViewController {
        vc
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
