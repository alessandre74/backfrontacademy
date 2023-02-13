//
//  CustomCollectionViewCell.swift
//  PrimeiroProjetoCollectionView
//
//  Created by Alessandre Livramento on 12/02/23.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    @IBOutlet var carImageView: UIImageView!

    static let identifier: String = "CustomCollectionViewCell"
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        carImageView.contentMode = .scaleAspectFill
    }

    func setupCell(nameImage: String) {
        carImageView.image = UIImage(named: nameImage)
    }
}
