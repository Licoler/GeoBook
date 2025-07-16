//
//  Country.swift
//  GeoBook
//
//  Created by Alexandr Artemov on 15.07.2025.
//

struct Country {
    let name: String
    let image: String
    let capital: String
    let countryPhoneCode: String
    let countryArea: String
    let currency: String
    
    static func getMock() -> [Continent] {
        DataStore.shared.countries
    }
}
