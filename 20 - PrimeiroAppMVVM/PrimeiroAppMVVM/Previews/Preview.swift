//
//  Preview.swift
//  PrimeiroAppMVVM
//
//  Created by Alessandre Livramento on 11/03/23.
//

import SwiftUI

class Preview {
    static func showViewController(_ viewController: @escaping () -> UIViewController) -> some View {
        VCPreview {
            viewController()
        }.ignoresSafeArea()
    }

    static func showView(_ view: @escaping () -> UIView) -> some View {
        VPreview {
            view()
        }.ignoresSafeArea()
    }
}
