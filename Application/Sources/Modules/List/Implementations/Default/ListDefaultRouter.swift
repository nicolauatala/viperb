//
//  ListDefaultRouter.swift
//  ListDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class ListDefaultRouter: ListRouter {

    weak var presenter: ListPresenter?
    weak var viewController: UIViewController?
    
    func route(for index: Int) {
        let viewController = DetailDefaultBuilder().main(index: index)
        self.viewController?.show(viewController, sender: nil)
    }
    
    func routeForInfo() {
        let viewController = InfoDefaultBuilder().main(delegate: self)
        self.viewController?.tabBarController?.present(viewController, animated: true, completion: nil)
    }
}

extension ListDefaultRouter: InfoModuleDelegate {

    func closeInfoModule() {
        self.viewController?.tabBarController?.dismiss(animated: true, completion: nil)
    }
}
