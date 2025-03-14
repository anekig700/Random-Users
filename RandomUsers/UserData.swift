//
//  UserData.swift
//  RandomUsers
//
//  Created by Kotya on 13/03/2025.
//

import Foundation

@MainActor
class UserData: ObservableObject {
    
    @Published var users: String = ""
    
    init() {
        Task {
            await loadUsers()
        }
    }
    
    func loadUsers() async {
        do {
            let users = try await UserFetchingClient.getUsers()
            self.users = users
        }
        catch {
            print(error)
        }
    }
}
