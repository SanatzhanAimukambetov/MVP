//
//  ModuleBuilder.swift
//  MVP
//
//  Created by Sanatzhan Aimukambetov on 26.12.2020.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
}

class ModelBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let model = Person(firstName: "Kairat", lastName: "Nurtas")
        let view = MainViewController()
        let presenter = MainPresenter(view: view, person: model)
        view.presenter = presenter
        return view
    }
}
