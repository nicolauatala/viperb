//
//  ListRouter.swift
//  List
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

protocol ListRouter {

    var presenter: ListPresenter? { get set }
    
    func route(for index: Int)
    func routeForInfo()
}
