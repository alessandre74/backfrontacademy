//
//  CarTableViewCell.swift
//  DesafioTableView
//
//  Created by Alessandre Livramento on 12/02/23.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    @IBOutlet var carImageView: UIImageView!

    @IBOutlet var brandLabel: UILabel!

    static let identifier: String = "CarTableViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func setupCell(_ data: Car) {
        brandLabel.text = data.brand
        carImageView.image = data.brandImage
    }
}
