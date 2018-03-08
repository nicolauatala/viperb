//
//  InfoDefaultPresenter.swift
//  InfoDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

class InfoDefaultPresenter: InfoPresenter {

    var router: InfoRouter?
    var interactor: InfoInteractor?
    weak var view: InfoViewController?

    func didSelectClose() {
        self.router?.closeInfo()
    }
    
    deinit {
        print("deinit - \(type(of: self))")
    }
}
