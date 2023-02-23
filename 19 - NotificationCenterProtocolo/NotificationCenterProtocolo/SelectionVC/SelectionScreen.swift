//
//  SelectionScreen.swift
//  NotificationCenterProtocolo
//
//  Created by Alessandre Livramento on 23/02/23.
//

import SwiftUI
import UIKit

protocol SelectionScreenProtocol: AnyObject {
    func tappedMacbookButtom()
    func tappedImacButtom()
}

class SelectionScreen: UIView {
    private weak var delegate: SelectionScreenProtocol?

    public func delegate(delegate: SelectionScreenProtocol?) {
        self.delegate = delegate
    }

    lazy var optionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .yellow
        label.textAlignment = .center
        label.text = "Opções"
        label.font = UIFont.boldSystemFont(ofSize: 34)
        return label
    }()

    lazy var macbookButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "macbook")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(tappedMacbookButtom), for: .touchUpInside)
        return button
    }()

    lazy var imacButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "imac")?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.addTarget(self, action: #selector(tappedImacbookButtom), for: .touchUpInside)
        return button
    }()

    @objc func tappedMacbookButtom(_ sender: UIButton) {
        delegate?.tappedMacbookButtom()
    }

    @objc func tappedImacbookButtom(_ sender: UIButton) {
        delegate?.tappedImacButtom()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .black
        addElements()
        configConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addElements() {
        addSubview(optionLabel)
        addSubview(macbookButton)
        addSubview(imacButton)
    }

    private func configConstraints() {
        NSLayoutConstraint.activate([
            optionLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            optionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),

            macbookButton.topAnchor.constraint(equalTo: optionLabel.bottomAnchor, constant: 60),
            macbookButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            macbookButton.heightAnchor.constraint(equalToConstant: 150),
            macbookButton.widthAnchor.constraint(equalToConstant: 230),

            imacButton.topAnchor.constraint(equalTo: macbookButton.bottomAnchor, constant: 60),
            imacButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            imacButton.heightAnchor.constraint(equalTo: macbookButton.heightAnchor),
            imacButton.widthAnchor.constraint(equalTo: macbookButton.widthAnchor),

        ])
    }
}

struct SelectionScreen_Previews: PreviewProvider {
    static var previews: some View {
        VPreview {
            SelectionScreen()
        }
        .ignoresSafeArea()
    }
}
