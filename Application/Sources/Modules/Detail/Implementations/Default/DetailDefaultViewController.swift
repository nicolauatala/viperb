//
//  DetailDefaultViewController.swift
//  DetailDefault
//
//  Created by Tibor Bödecs on 2018. 03. 08..
//  Copyright © 2018. Tibor Bödecs. All rights reserved.
//

import Foundation
import UIKit

class DetailDefaultViewController: UIViewController, DetailViewController {

    var presenter: DetailPresenter?
    
    init() {
        super.init(nibName: nil, bundle: nil)

        self.title = "Detail"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white

        self.presenter?.viewDidLoad()
    }
    
    deinit {
        print("deinit - \(type(of: self))")
    }
    
    func set(index: Int) {
        self.title = "Detail \(index)"
    }
}
