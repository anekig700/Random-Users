//
//  UserFetchingClient.swift
//  RandomUsers
//
//  Created by Kotya on 13/03/2025.
//

import Foundation

struct UserFetchingClient {
    
    static private let url = URL(string: "https://randomuser.me/api/?format=pretty&results=10")!
    
    static func getUsers() async throws -> String {
        async let (data, _) = URLSession.shared.data(from: url)
        return try await String(data: data, encoding: .utf8)!
    }
}
