//
//  MockNetworkManager.swift
//  SettingScreen
//
//  Created by Naga Rajitha Bhogadi on 6/9/26.
//

//import Foundation
import UIKit
// mock singleton
final class MockNetworkManager: Sendable, NetworkProtocol {
    static let sharedInstance = MockNetworkManager()
    private init() {}
        
        func getDataFromServer(for url: String) -> [[ModelSettings]] {
            var allSections: [[ModelSettings]] = []
            
            let section1 = [
                ModelSettings(title: "About",
                              icon: "info.circle",
                              color: .systemGray),
                
                ModelSettings(title: "Screen Capture",
                              icon: "camera",
                              color: .systemGray)
            ]
            
            let section2 = [
                ModelSettings(title: "AutoFill & Passwords",
                              icon: "key.fill",
                              color: .systemGray),
                
                ModelSettings(title: "Dictionary",
                              icon: "book.fill",
                              color: .systemBlue),
                
                ModelSettings(title: "Fonts",
                              icon: "textformat",
                              color: .systemGray),
                
                ModelSettings(title: "Keyboard",
                              icon: "keyboard",
                              color: .systemGray),
                
                ModelSettings(title: "Language & Region",
                              icon: "globe",
                              color: .systemBlue)
            ]
            
            let section3 = [
                ModelSettings(title: "VPN & Device Management",
                              icon: "gearshape",
                              color: .systemGray)
            ]
            
            allSections.append(section1)
            allSections.append(section2)
            allSections.append(section3)
            
            return allSections
        }
    }
