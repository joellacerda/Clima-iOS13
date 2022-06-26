//
//  WeatherModel.swift
//  Clima
//
//  Created by Joel Lacerda on 23/06/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionID: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionID {
        case 210...221:
            return "cloud.bolt"
        case 200...202, 230...232:
            return "cloud.bolt.rain"
        case 300...321:
            return "cloud.drizzle"
        case 500, 501, 520, 521, 531:
            return "cloud.rain"
        case 502...504, 522:
            return "cloud.heavyrain"
        case 511, 600...611:
            return "snowflake"
        case 612...622:
            return "cloud.snow"
        case 701...711:
            return "cloud.fog"
        case 781:
            return "tornado"
        case 800:
            return "sun.max"
        case 801...804:
            return "cloud"
        default:
            return "cloud"
        }
    }
}
