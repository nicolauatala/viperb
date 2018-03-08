//
//  ListPresenter.swift
//  List
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

protocol ListPresenter: class {

    var router: ListRouter? { get set }
    var interactor: ListInteractor? { get set }
    var view: ListViewController? { get set }
   
    func didSelectInfo()
    func didSelect(index: Int)
}
