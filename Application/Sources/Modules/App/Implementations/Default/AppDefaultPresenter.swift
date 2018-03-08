//
//  AppDefaultPresenter.swift
//  AppDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

class AppDefaultPresenter: AppPresenter {

    var router: AppRouter?
    var interactor: AppInteractor?
    weak var view: AppViewController?
}
