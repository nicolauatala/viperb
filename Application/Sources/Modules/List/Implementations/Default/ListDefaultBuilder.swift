//
//  ListDefaultBuilder.swift
//  ListDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class ListDefaultBuilder: AppBuilder {

    func main() -> UIViewController {
        let view = ListDefaultViewController()
        let interactor = ListDefaultInteractor()
        let presenter = ListDefaultPresenter()
        let router = ListDefaultRouter()
        let controller = UINavigationController(rootViewController: view)

        view.presenter = presenter

        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router

        router.presenter = presenter
        router.viewController = view

        return controller
    }
}
