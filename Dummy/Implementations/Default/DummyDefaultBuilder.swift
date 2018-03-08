//
//  DummyDefaultBuilder.swift
//  DummyDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class DummyDefaultBuilder {

    func main() -> UIViewController {
        let view = DummyDefaultViewController()
        let interactor = DummyDefaultInteractor()
        let presenter = DummyDefaultPresenter()
        let router = DummyDefaultRouter()
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
