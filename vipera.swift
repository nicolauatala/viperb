#!/usr/bin/env swift

import Foundation

guard CommandLine.arguments.count > 1 else {
    print("You have to to provide a module name as the first argument.")
    exit(-1)
}

func getUserName(_ args: String...) -> String {
    let task = Process()
    let pipe = Pipe()

    task.standardOutput = pipe
    task.standardError = pipe
    task.launchPath = "/usr/bin/env"
    task.arguments = ["git", "config", "--global", "user.name"]
    task.launch()
    let data = pipe.fileHandleForReading.readDataToEndOfFile()
    let output = String(data: data, encoding: .utf8)?.trimmingCharacters(in: .whitespacesAndNewlines) ?? "VIPERA"
    task.waitUntilExit()
    return output
    //return (output, task.terminationStatus)
}

let userName = getUserName()
let module = CommandLine.arguments[1].capitalized
let fileManager = FileManager.default

let workUrl           = URL(fileURLWithPath: fileManager.currentDirectoryPath, isDirectory: true)
//let workUrl           = fileManager.homeDirectoryForCurrentUser
let moduleUrl         = workUrl.appendingPathComponent(module)
let interfacesUrl     = moduleUrl.appendingPathComponent("Interfaces")
let implmentationsUrl = moduleUrl.appendingPathComponent("Implementations")
let defaultUrl        = implmentationsUrl.appendingPathComponent("Default")

let interfaceRouterUrl         = interfacesUrl.appendingPathComponent(module+"Router").appendingPathExtension("swift")
let interfacePresenterUrl      = interfacesUrl.appendingPathComponent(module+"Presenter").appendingPathExtension("swift")
let interfaceInteractorUrl     = interfacesUrl.appendingPathComponent(module+"Interactor").appendingPathExtension("swift")
let interfaceViewControllerUrl = interfacesUrl.appendingPathComponent(module+"ViewController").appendingPathExtension("swift")

let defaultBuilderUrl        = defaultUrl.appendingPathComponent(module+"DefaultBuilder").appendingPathExtension("swift")
let defaultRouterUrl         = defaultUrl.appendingPathComponent(module+"DefaultRouter").appendingPathExtension("swift")
let defaultPresenterUrl      = defaultUrl.appendingPathComponent(module+"DefaultPresenter").appendingPathExtension("swift")
let defaultInteractorUrl     = defaultUrl.appendingPathComponent(module+"DefaultInteractor").appendingPathExtension("swift")
let defaultViewControllerUrl = defaultUrl.appendingPathComponent(module+"DefaultViewController").appendingPathExtension("swift")

func fileComment(for module: String, type: String) -> String {
    let today    = Date()
    let calendar = Calendar(identifier: .gregorian)
    let year     = String(calendar.component(.year, from: today))
    let month    = String(format: "%02d", calendar.component(.month, from: today))
    let day      = String(format: "%02d", calendar.component(.day, from: today))

    return """
        //
        //  \(module)\(type).swift
        //  \(module)
        //
        //  Created by \(userName) on \(year). \(month). \(day)..
        //  Copyright © \(year). \(userName). All rights reserved.
        //
        """
}

let interfaceRouter = """
\(fileComment(for: module, type: "Router"))

import Foundation

protocol \(module)Router {

    var presenter: \(module)Presenter? { get set }
}

"""

let interfacePresenter = """
\(fileComment(for: module, type: "Presenter"))

import Foundation

protocol \(module)Presenter: class {

    var router: \(module)Router? { get set }
    var interactor: \(module)Interactor? { get set }
    var view: \(module)ViewController? { get set }
}

"""

let interfaceInteractor = """
\(fileComment(for: module, type: "Interactor"))

import Foundation

protocol \(module)Interactor {

    var presenter: \(module)Presenter? { get set }
}

"""

let interfaceViewController = """
\(fileComment(for: module, type: "ViewController"))

import Foundation

protocol \(module)ViewController: class {

    var presenter: \(module)Presenter? { get set }
}

"""

let defaultBuilder = """
\(fileComment(for: module+"Default", type: "Builder"))

import Foundation
import UIKit

class \(module)DefaultBuilder {

    func main() -> UIViewController {
        let view = \(module)DefaultViewController()
        let interactor = \(module)DefaultInteractor()
        let presenter = \(module)DefaultPresenter()
        let router = \(module)DefaultRouter()
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

"""

let defaultRouter = """
\(fileComment(for: module+"Default", type: "Router"))

import Foundation
import UIKit

class \(module)DefaultRouter: \(module)Router {

    weak var presenter: \(module)Presenter?
    weak var viewController: UIViewController?

}

"""


let defaultPresenter = """
\(fileComment(for: module+"Default", type: "Presenter"))

import Foundation

class \(module)DefaultPresenter: \(module)Presenter {

    var router: \(module)Router?
    var interactor: \(module)Interactor?
    weak var view: \(module)ViewController?
}

"""


let defaultInteractor = """
\(fileComment(for: module+"Default", type: "Interactor"))

import Foundation
import UIKit

class \(module)DefaultInteractor: \(module)Interactor {

    weak var presenter: \(module)Presenter?

}

"""

let defaultViewController = """
\(fileComment(for: module+"Default", type: "ViewController"))

import Foundation
import UIKit

class \(module)DefaultViewController: UIViewController, \(module)ViewController {

    var presenter: \(module)Presenter?

}

"""


do {
    try [moduleUrl, interfacesUrl, implmentationsUrl, defaultUrl].forEach {
        try fileManager.createDirectory(at: $0, withIntermediateDirectories: true, attributes: nil)
    }

    try interfaceRouter.write(to: interfaceRouterUrl, atomically: true, encoding: .utf8)
    try interfacePresenter.write(to: interfacePresenterUrl, atomically: true, encoding: .utf8)
    try interfaceInteractor.write(to: interfaceInteractorUrl, atomically: true, encoding: .utf8)
    try interfaceViewController.write(to: interfaceViewControllerUrl, atomically: true, encoding: .utf8)

    try defaultBuilder.write(to: defaultBuilderUrl, atomically: true, encoding: .utf8)
    try defaultRouter.write(to: defaultRouterUrl, atomically: true, encoding: .utf8)
    try defaultPresenter.write(to: defaultPresenterUrl, atomically: true, encoding: .utf8)
    try defaultInteractor.write(to: defaultInteractorUrl, atomically: true, encoding: .utf8)
    try defaultViewController.write(to: defaultViewControllerUrl, atomically: true, encoding: .utf8)
}
catch {
    print(error.localizedDescription)
}

