//
//  Todo.swift
//  WidgetKitCourse
//
//  Created by Florian Schweizer on 01.12.21.
//

import Foundation
import SwiftUI

struct Todo: Decodable, Identifiable {
    let userId: Int
    let id: Int
    let title: String
    let completed: Bool
}

extension Todo{
    static func placeholder(_ id:Int) -> Todo{
        return Todo(userId: 0, id: id, title: "Placeholder", completed: .random())
    }
}
