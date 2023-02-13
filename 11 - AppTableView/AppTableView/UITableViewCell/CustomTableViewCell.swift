//
//  CustomTableViewCell.swift
//  AppTableView
//
//  Created by Alessandre Livramento on 12/02/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet var tiltleLabel: UILabel!

    static let identifier: String = "CustomTableViewCell"

    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setupCell(title: String) {
        tiltleLabel.text = title
    }
}
