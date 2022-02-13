//
//  SomeManager.swift
//  Test
//
//  Created by Arteezy on 2/13/22.
//

import Foundation


class SomeManager {
    
    static let sharedInstance: SomeManager = SomeManager()

    
    var userCoins: Int = UserDefaults.standard.value(forKey: "userCoins") as! Int {
        didSet {
            print("userCoins changed, sending notification across app")
            NotificationCenter.default.post(name: .coinsDidChange, object: nil)
        }
    }
    
    
    
}
