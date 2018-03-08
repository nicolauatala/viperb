//
//  DetailDefaultRouter.swift
//  DetailDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class DetailDefaultRouter: DetailRouter {

    weak var presenter: DetailPresenter?
    weak var viewController: UIViewController?

    deinit {
        print("deinit - \(type(of: self))")
    }
}
