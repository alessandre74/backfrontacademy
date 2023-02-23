//
//  SelectionVC.swift
//  NotificationCenterProtocolo
//
//  Created by Alessandre Livramento on 23/02/23.
//

import SwiftUI
import UIKit

protocol SelectionVCProtocol: AnyObject {
    func updateImac()
    func updateMacbook()
}

class SelectionVC: UIViewController {
    private weak var delegate: SelectionVCProtocol?

    public func delegate(delegate: SelectionVCProtocol?) {
        self.delegate = delegate
    }

    var selectionScreen: SelectionScreen?

    override func loadView() {
        selectionScreen = SelectionScreen()
        view = selectionScreen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        selectionScreen?.delegate(delegate: self)
    }
}

extension SelectionVC: SelectionScreenProtocol {
    func tappedMacbookButtom() {
//        NotificationCenter.default.post(name: Notification.Name("macbook"), object: nil)
        delegate?.updateMacbook()
        dismiss(animated: true)
    }

    func tappedImacButtom() {
//        NotificationCenter.default.post(name: Notification.Name("imac"), object: nil)
        delegate?.updateImac()
        dismiss(animated: true)
    }
}

struct SelectionVC_Previews: PreviewProvider {
    static var previews: some View {
        VCPreview {
            SelectionVC()
        }
        .ignoresSafeArea()
    }
}
