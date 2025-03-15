//
//  UsersView.swift
//  RandomUsers
//
//  Created by Kotya on 13/03/2025.
//

import SwiftUI

struct UsersView: View {
    
    @StateObject var userData = UserData()
    
    var body: some View {
        NavigationStack {
            List(userData.users) { user in
                Text(user.fullName)
            }
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    UsersView()
}
