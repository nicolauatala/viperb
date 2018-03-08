//
//  InfoDefaultViewController.swift
//  InfoDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class InfoDefaultViewController: UIViewController, InfoViewController {

    var presenter: InfoPresenter?
    
    init() {
        super.init(nibName: nil, bundle: nil)

        self.title = "Info"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white

        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .done,
                                                                 target: self,
                                                                 action: #selector(self.close))
    }

    @objc func close() {
        self.presenter?.didSelectClose()
    }
    
    deinit {
        print("deinit - \(type(of: self))")
    }
}
