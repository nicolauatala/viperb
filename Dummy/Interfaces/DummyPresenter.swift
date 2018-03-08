//
//  DummyPresenter.swift
//  Dummy
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

protocol DummyPresenter: class {

    var router: DummyRouter? { get set }
    var interactor: DummyInteractor? { get set }
    var view: DummyViewController? { get set }
}
