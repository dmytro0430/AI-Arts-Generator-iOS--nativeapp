//
//  MyAuthenticationCredential.swift
//  AIArtGenerator
//


import Foundation
import  AIgenerator

struct MyAuthenticationCredential: AuthenticationCredential {
    let accessToken: String
    let refreshToken: String
    let expiredAt: Date

    // If the expiration time is less than 5 minutes left, returns true indicating that refresh is needed (if false is returned, refresh is required x)
    var requiresRefresh: Bool { Date(timeIntervalSinceNow: 60 * 5) > expiredAt }
}
