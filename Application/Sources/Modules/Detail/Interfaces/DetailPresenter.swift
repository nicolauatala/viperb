//
//  DetailPresenter.swift
//  Detail
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

protocol DetailPresenter: class {

    var router: DetailRouter? { get set }
    var interactor: DetailInteractor? { get set }
    var view: DetailViewController? { get set }
    
    var index: Int { get set }
    
    func viewDidLoad()
}
