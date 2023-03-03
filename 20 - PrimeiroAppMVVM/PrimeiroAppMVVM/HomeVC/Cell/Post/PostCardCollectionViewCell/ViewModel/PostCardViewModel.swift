//
//  PostCardViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Alessandre Livramento on 02/03/23.
//

import UIKit

class PostCardViewModel {
    private var lisPosts: [Posts]

    init(lisPosts: [Posts]) {
        self.lisPosts = lisPosts
    }

    public var numberOfItems: Int {
        lisPosts.count
    }

    public func loadCurrentPost(indexPath: IndexPath) -> Posts {
        lisPosts[indexPath.row]
    }
}
