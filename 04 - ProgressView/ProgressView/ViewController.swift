//
//  ViewController.swift
//  ProgressView
//
//  Created by Alessandre Livramento on 01/01/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var progressView: UIProgressView!
    override func viewDidLoad() {
        super.viewDidLoad()

        progressView.tintColor = .green
        progressView.trackTintColor = .lightGray.withAlphaComponent(0.6)

        let total = Progress(totalUnitCount: 100)
        total.completedUnitCount = 25
        progressView.setProgress(Float(total.fractionCompleted), animated: true)
    }
}
