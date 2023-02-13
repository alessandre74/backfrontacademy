//
//  ViewController.swift
//  PrimeiroProjetoCollectionView
//
//  Created by Alessandre Livramento on 12/02/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var colletionView: UICollectionView!

    var data: [String] = ["car1", "car2", "car3", "car4", "car5", "car6"]

    override func viewDidLoad() {
        super.viewDidLoad()
        configColletionView()
    }

    func configColletionView() {
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

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomCollectionViewCell.identifier, for: indexPath) as? CustomCollectionViewCell

        cell?.setupCell(nameImage: data[indexPath.row])

        return cell ?? UICollectionViewCell()
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 300)
    }
}
