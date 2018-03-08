//
//  DetailViewController.swift
//  Detail
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation

protocol DetailViewController: class {

    var presenter: DetailPresenter? { get set }
    
    func set(index: Int)
}
