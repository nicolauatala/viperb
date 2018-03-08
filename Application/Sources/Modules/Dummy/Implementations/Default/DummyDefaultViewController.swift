//
//  DummyDefaultViewController.swift
//  DummyDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class DummyDefaultViewController: UIViewController, DummyViewController {

    var presenter: DummyPresenter?
    
    init() {
        super.init(nibName: nil, bundle: nil)

        self.title = "Dummy"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .white
    }

}
