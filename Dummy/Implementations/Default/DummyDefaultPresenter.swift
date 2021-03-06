//
//  DummyDefaultPresenter.swift
//  DummyDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

class DummyDefaultPresenter: DummyPresenter {

    var router: DummyRouter?
    var interactor: DummyInteractor?
    weak var view: DummyViewController?
}
