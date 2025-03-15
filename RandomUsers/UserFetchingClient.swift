//
//  UserFetchingClient.swift
//  RandomUsers
//
//  Created by Kotya on 13/03/2025.
//

import Foundation

struct UserFetchingClient {
    
    static private let url = URL(string: "https://randomuser.me/api/?format=pretty&results=10")!
    
    static func getUsers() async throws -> [User] {
        async let (data, _) = URLSession.shared.data(from: url)
        let response = try await JSONDecoder().decode(Response.self, from: data)
        return response.users
    }
}
