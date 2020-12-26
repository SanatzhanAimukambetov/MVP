//
//  MainPresenterTest.swift
//  MVPTests
//
//  Created by Sanatzhan Aimukambetov on 26.12.2020.
//

import XCTest
@testable import MVP

class MockView: MainViewProtocol {
    var titleTest: String?
    func setGreeting(greeting: String) {
        self.titleTest = greeting
    }
}

class MainPresenterTest: XCTestCase {
    
    var view: MockView!
    var model: Person!
    var presenter: MainPresenter!

    override func setUpWithError() throws {
        view = MockView()
        model = Person(firstName: "Baz", lastName: "Bar")
        presenter = MainPresenter(view: view, person: model)
    }

    override func tearDownWithError() throws {
        view = nil
        model = nil
        presenter = nil
    }
    
    func testModuleIsNotNil() {
        XCTAssertNotNil(view, "view is not nil")
        XCTAssertNotNil(model, "view is not nil")
        XCTAssertNotNil(presenter, "view is not nil")
    }
    
    func testView() {
        presenter.showGreeting()
        XCTAssertEqual(view.titleTest, "Baz Bar")
    }
    
    func testPersonModel() {
        XCTAssertEqual(model.firstName, "Baz")
        XCTAssertEqual(model.lastName, "Bar")
    }
}
