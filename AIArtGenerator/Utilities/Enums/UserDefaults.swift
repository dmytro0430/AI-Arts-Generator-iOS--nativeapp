//
//  UserDefaults.swift
//


import Foundation

extension UserDefaults{
    @PlainUserDefaultsBacked(key: "is_first_launch", defaultValue: false) static var isFirstLaunch
    :Bool
    @PlainUserDefaultsBacked(key: "is_user_loggedin", defaultValue: false) static var isUserLoggedIn:Bool
    @PlainUserDefaultsBacked(key: "accessToken", defaultValue: "") static var accessToken:String
}

//class UserDefaultsDataSource{
//
//}
