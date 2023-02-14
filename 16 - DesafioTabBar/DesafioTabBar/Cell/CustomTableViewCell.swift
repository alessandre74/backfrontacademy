//
//  CustomTableViewCell.swift
//  DesafioTabBar
//
//  Created by Alessandre Livramento on 13/02/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet var userImageView: UIImageView!

    @IBOutlet var nameLabel: UILabel!
    static let identifier: String = "CustomTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }

    func setupCell(profile: Profile) {
        userImageView.image = profile.photo
        nameLabel.text = profile.name
    }
}
