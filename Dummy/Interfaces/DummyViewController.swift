//
//  DummyViewController.swift
//  Dummy
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

protocol DummyViewController: class {

    var presenter: DummyPresenter? { get set }
}
