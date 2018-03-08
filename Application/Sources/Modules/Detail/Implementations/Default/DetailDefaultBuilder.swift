//
//  DetailDefaultBuilder.swift
//  DetailDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class DetailDefaultBuilder {

    func main(index: Int) -> UIViewController {
        let view = DetailDefaultViewController()
        let interactor = DetailDefaultInteractor()
        let presenter = DetailDefaultPresenter(index: index)
        let router = DetailDefaultRouter()

        view.presenter = presenter

        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router

        router.presenter = presenter
        router.viewController = view

        return view
    }
    
    deinit {
        print("deinit - \(type(of: self))")
    }
}
