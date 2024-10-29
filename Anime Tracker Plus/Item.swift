//
//  Item.swift
//  Anime Tracker Plus
//
//  Created by Adjie Satryo on 29/10/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
