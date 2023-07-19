//
//  Test.swift
//  SwiftRadio
//
//  Created by popov-va on 03.07.2023.
//  Copyright © 2023 matthewfecher.com. All rights reserved.
//

import SwiftUI

class Test: UIViewController {
    
    struct User: Decodable {
        let name: String
        let email: String
        let address: String
        let age: Int
    }
    
    struct UserView: View {
        let user: User
        
        var body: some View {
            VStack(alignment: .leading) {
                Text(user.name)
                    .font(.headline)
                    .accessibility(identifier: Accessibility.Test.name.rawValue)
                Text(user.address)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    .accessibility(identifier: Accessibility.Test.address.rawValue)
                Text(user.email)
                    .foregroundColor(.secondary)
                    .accessibility(identifier: Accessibility.Test.email.rawValue)
                Text("Age: \(user.age)")
                    .foregroundColor(.secondary)
                    .accessibility(identifier: Accessibility.Test.age.rawValue)
            }
        }
    }
}
