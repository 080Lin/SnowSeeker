//
//  Favorites.swift
//  SnowSeeker
//
//  Created by Максим Нуждин on 31.01.2022.
//

import Foundation


class Favorites: ObservableObject {
    
    private var resorts: Set<String>
    private let saveKey = "Favorites"
    
    let savePath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent("resorts")
    
    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let encoded = try? JSONDecoder().decode(Set<String>.self, from: data) {
                resorts = encoded
                return
            }
        }
        resorts = []
    }
    
    func contains(_ resort: Resort) -> Bool {
        resorts.contains(resort.id)
    }
    
    func add(_ resort: Resort) {
        objectWillChange.send()
        resorts.insert(resort.id)
        save()
    }
    
    func remove(_ resort: Resort) {
        objectWillChange.send()
        resorts.remove(resort.id)
        save()
    }
    
    private func save() {
        if let data = try? JSONEncoder().encode(resorts) {
            try? data.write(to: savePath)
        }
    }
}
