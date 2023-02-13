//
//  CustomTableViewCell.swift
//  CollectionViewAvancada
//
//  Created by Alessandre Livramento on 13/02/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var colletionView: UICollectionView!

    static let identifier: String = "CustomTableViewCell"

    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }

    var listCar: [String] = ["car1", "car2", "car3", "car4", "car5", "car6"]

    override func awakeFromNib() {
        super.awakeFromNib()
        configCollectionView()
    }

    func configCollectionView() {
        colletionView.delegate = self
        colletionView.dataSource = self
        colletionView.showsHorizontalScrollIndicator = false

        if let layout = colletionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
            layout.estimatedItemSize = .zero
        }

        colletionView.register(CustomCollectionViewCell.nib(), forCellWithReuseIdentifier: CustomCollectionViewCell.identifier)
    }
}

extension CustomTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listCar.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell

        cell?.setupCell(nameImage: listCar[indexPath.row])

        return cell ?? UICollectionViewCell()
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: contentView.frame.width, height: 353)
    }
}
