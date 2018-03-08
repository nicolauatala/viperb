//
//  AppPresenter.swift
//  App
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

protocol AppPresenter: class {

    var router: AppRouter? { get set }
    var interactor: AppInteractor? { get set }
    var view: AppViewController? { get set }
}
