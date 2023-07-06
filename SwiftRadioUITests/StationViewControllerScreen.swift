//
//  StationViewControllerScreen.swift
//  SwiftRadioUITests
//
//  Created by popov-va on 06.07.2023.
//  Copyright © 2023 matthewfecher.com. All rights reserved.
//

import Foundation
import Resources
import XCTest

protocol BaseScreen {
    static var app: XCUIApplication { get }
}

extension BaseScreen {
    static var app: XCUIApplication {
        XCUIApplication()
    }
}

class StationViewControllerScreen: BaseScreen {
    
    static let nameRadio = app.otherElements.matching(identifier: )
}
