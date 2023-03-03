//
//  HomeScreen.swift
//  PrimeiroAppMVVM
//
//  Created by Alessandre Livramento on 28/02/23.
//

import SwiftUI
import UIKit

class HomeScreen: UIView {
    lazy var colletionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.showsHorizontalScrollIndicator = false
        cv.register(StoryCardCollectionViewCell.self, forCellWithReuseIdentifier: StoryCardCollectionViewCell.identifier)
        cv.register(PostCardCollectionViewCell.self, forCellWithReuseIdentifier: PostCardCollectionViewCell.identifier)
        cv.backgroundColor = .clear
        return cv
    }()

    public func configProtocolsCollectionView(delegate: UICollectionViewDelegate, dataSource: UICollectionViewDataSource) {
        colletionView.delegate = delegate
        colletionView.dataSource = dataSource
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .appBackGround
        addSubview(colletionView)
        colletionView.pin(to: self)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
