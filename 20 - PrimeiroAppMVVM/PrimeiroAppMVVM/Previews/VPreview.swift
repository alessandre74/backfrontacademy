//
//  VPreview.swift
//  PrimeiroAppMVVM
//
//  Created by Alessandre Livramento on 11/03/23.
//

import SwiftUI

struct VPreview: UIViewRepresentable {
    let viewBuilder: () -> UIView

    init(_ viewBuilder: @escaping () -> UIView) {
        self.viewBuilder = viewBuilder
    }

    func makeUIView(context: Context) -> some UIView {
        viewBuilder()
    }

    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}
