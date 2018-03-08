//
//  DetailDefaultPresenter.swift
//  DetailDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

class DetailDefaultPresenter: DetailPresenter {

    var router: DetailRouter?
    var interactor: DetailInteractor?
    weak var view: DetailViewController?
    
    var index: Int
    
    init(index: Int) {
        self.index = index
    }

    deinit {
        print("deinit - \(type(of: self))")
    }

    func viewDidLoad() {
        self.view?.set(index: self.index)
    }
}
