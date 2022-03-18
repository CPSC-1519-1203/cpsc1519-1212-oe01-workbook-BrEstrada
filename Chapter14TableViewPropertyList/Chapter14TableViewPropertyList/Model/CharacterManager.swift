//
//  CharacterManager.swift
//  Chapter14TableViewPropertyList
//
//  Created by Brandon Estrada on 2022-03-18.
//

import Foundation

class CharacterManager {
    
    var characterNames:[String] = []
    
    init() {
        if let bundlePath = Bundle.main.path(forResource: "CharactersPropertyList", ofType: "plist"),
           let fileContent = FileManager.default.contents(atPath: bundlePath) {
            
            characterNames = ((try? PropertyListSerialization.propertyList(from: fileContent, options: .mutableContainersAndLeaves, format: nil)) as? [String])!
        }
    }
}
