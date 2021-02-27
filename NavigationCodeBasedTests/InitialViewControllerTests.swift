//
//  InitialViewControllerTests.swift
//  NavigationCodeBasedTests
//
//  Created by Erich Flock on 15.01.21.
//

import XCTest
@testable import NavigationCodeBased

class InitialViewControllerTests: XCTestCase {

    var sut: InitialViewController!
    
    override func setUpWithError() throws {
        sut = InitialViewController()
    }

    override func tearDownWithError() throws {
        sut = nil
    }
    
    func test_whenNextButtonIsTapped_shouldMoveToSecondViewController() {
        sut.loadViewIfNeeded()
        let navigationController = UINavigationController(rootViewController: sut)
        
        sut.nextButton?.tap()
        
        XCTAssertEqual(navigationController.viewControllers.count, 2)
        
        let nextVC = navigationController.viewControllers.last
        guard (nextVC as? SecondViewController) != nil else {
            XCTFail("Expected view controller to be SecondViewController but it was \(String(describing: nextVC))")
            return
        }
    }

}

extension UIButton {
    func tap() {
        sendActions(for: .touchUpInside)
    }
}
