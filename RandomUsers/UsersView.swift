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
            VStack {
                Text("Raw JSON Data:")
            }
            ScrollView {
                Text(userData.users)
            }
            .padding()
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    UsersView()
}
