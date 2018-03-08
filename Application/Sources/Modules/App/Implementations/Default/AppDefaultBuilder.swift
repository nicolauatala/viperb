//
//  AppDefaultBuilder.swift
//  AppDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class AppDefaultBuilder {

    func main() -> UIViewController {

        let modules: [AppBuilder] = [
            ListDefaultBuilder(),
            DummyDefaultBuilder(),
        ]

        let tabbarController = UITabBarController()
        tabbarController.viewControllers = modules.map { $0.main() }
        return tabbarController
    }
}
