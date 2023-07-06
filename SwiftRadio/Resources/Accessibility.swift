//
//  Accessibility.swift
//  SwiftRadio
//
//  Created by popov-va on 03.07.2023.
//  Copyright © 2023 matthewfecher.com. All rights reserved.
//

import Foundation

public final class Accessibility: NSObject {
    
    public enum InfoDetailViewController: String {
        case stationNameLabel
        case stationDescLabel
        case okayButton
        case imageViewLogoRadio
    }
    
    public enum StationScreen: String {
        case nameStation
    }
    
    public enum Test: String {
        case name
        case address
        case email
        case age
    }
}
