//
//  InfoDefaultBuilder.swift
//  InfoDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class InfoDefaultBuilder {

    func main(delegate: InfoModuleDelegate) -> UIViewController {
        let view = InfoDefaultViewController()
        let interactor = InfoDefaultInteractor()
        let presenter = InfoDefaultPresenter()
        let router = InfoDefaultRouter(delegate: delegate)
        let controller = UINavigationController(rootViewController: view)

        view.presenter = presenter

        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router

        router.presenter = presenter
        router.viewController = view

        return controller
    }
    
    deinit {
        print("deinit - \(type(of: self))")
    }
}
