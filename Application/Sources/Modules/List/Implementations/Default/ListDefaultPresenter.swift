//
//  ListDefaultPresenter.swift
//  ListDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

class ListDefaultPresenter: ListPresenter {

    var router: ListRouter?
    var interactor: ListInteractor?
    weak var view: ListViewController?
    
    func didSelect(index: Int) {
        self.router?.route(for: index)
    }

    func didSelectInfo() {
        self.router?.routeForInfo()
    }
}
