//
//  InfoDefaultRouter.swift
//  InfoDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class InfoDefaultRouter: InfoRouter {

    weak var presenter: InfoPresenter?
    weak var viewController: UIViewController?
    unowned var delegate: InfoModuleDelegate

    init(delegate: InfoModuleDelegate) {
        self.delegate = delegate
    }

    func closeInfo() {
        //NOTE: you can omit the delegate & dismiss the viewcontroller directly if you prefer that way
        //self.viewController?.dismiss(animated: true, completion: nil)
        self.delegate.closeInfoModule()
    }
    
    deinit {
        print("deinit - \(type(of: self))")
    }
}
