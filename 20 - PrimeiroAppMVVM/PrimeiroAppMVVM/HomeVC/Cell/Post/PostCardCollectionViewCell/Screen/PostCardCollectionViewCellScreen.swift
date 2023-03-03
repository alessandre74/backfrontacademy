//
//  PostCardCollectionViewCellScreen.swift
//  PrimeiroAppMVVM
//
//  Created by Alessandre Livramento on 02/03/23.
//

import SwiftUI
import UIKit

class PostCardCollectionViewCellScreen: UIView {
    lazy var colletionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsVerticalScrollIndicator = false
        cv.register(PostCollectionViewCell.self, forCellWithReuseIdentifier: PostCollectionViewCell.identifier)
        cv.backgroundColor = .clear
        return cv
    }()

    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        colletionView.delegate = delegate
        colletionView.dataSource = dataSource
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(colletionView)
        colletionView.pin(to: self)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct PostCardCollectionViewCellScreen_Previews: PreviewProvider {
    static var previews: some View {
        VPreview {
            PostCardCollectionViewCellScreen()
        }
    }
}
