//
//  InfoPresenter.swift
//  Info
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

protocol InfoPresenter: class {

    var router: InfoRouter? { get set }
    var interactor: InfoInteractor? { get set }
    var view: InfoViewController? { get set }
    
    func didSelectClose()
}
