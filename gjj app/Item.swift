//
//  Item.swift
//  gjj app
//
//  Created by sunshihao on 2025/1/21.
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
