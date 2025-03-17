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
                HStack {
                    AsyncImage(url: URL(string: user.picture.thumbnail), content: { image in
                        image.clipShape(Circle())
                    }, placeholder: {
                        Image(systemName: "person")
                            .frame(width: 50, height: 50, alignment: .center)
                    })
                    Text(user.fullName)
                }
            }
            .navigationTitle("Random Users")
        }
    }
}

#Preview {
    UsersView()
}
