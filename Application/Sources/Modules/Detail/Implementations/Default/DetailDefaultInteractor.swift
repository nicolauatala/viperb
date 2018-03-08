//
//  DetailDefaultInteractor.swift
//  DetailDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class DetailDefaultInteractor: DetailInteractor {

    weak var presenter: DetailPresenter?
    
    deinit {
        print("deinit - \(type(of: self))")
    }

}
