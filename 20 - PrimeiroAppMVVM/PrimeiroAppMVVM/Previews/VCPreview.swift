//
//  VCPreview.swift
//  PrimeiroAppMVVM
//
//  Created by Alessandre Livramento on 28/02/23.
//

import SwiftUI

struct VCPreview: UIViewControllerRepresentable {
    let viewControllerBuilder: () -> UIViewController

    init(_ viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }

    func makeUIViewController(context: Context) -> some UIViewController {
        viewControllerBuilder()
    }

    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
