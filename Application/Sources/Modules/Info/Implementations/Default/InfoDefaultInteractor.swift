//
//  InfoDefaultInteractor.swift
//  InfoDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class InfoDefaultInteractor: InfoInteractor {

    weak var presenter: InfoPresenter?

    deinit {
        print("deinit - \(type(of: self))")
    }
}
