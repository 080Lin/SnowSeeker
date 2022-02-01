//
//  Resort.swift
//  SnowSeeker
//
//  Created by Максим Нуждин on 31.01.2022.
//

import Foundation


struct Resort: Codable, Identifiable {
    
    
    let id: String
    let name: String
    let country: String
    let description: String
    let imageCredit: String
    let price: Int
    let size: Int
    let snowDepth: Int
    let elevation: Int
    let runs: Int
    let facilities: [String]
    
    var facilityTypes: [Facility] {
        facilities.map(Facility.init)
    }
    
    static let allResorts: [Resort] = Bundle.main.decode("resorts.json")
    static let example: Resort = allResorts[0]
}


extension Resort {
    
    func sortedBy(lhs: Resort, rhs: Resort,_ method: SortMethods) -> Bool {
        switch method {
        case .name:
            return lhs.name < rhs.name
        case .country:
            return lhs.country < rhs.country
        }
    }
}
