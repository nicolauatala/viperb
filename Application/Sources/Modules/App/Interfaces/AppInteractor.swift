//
//  AppInteractor.swift
//  App
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

protocol AppInteractor {

    var presenter: AppPresenter? { get set }
}
