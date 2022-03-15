//
//  WidgetView.swift
//  WidgetKitCourse WidgetExtension
//
//  Created by Prabaljit Walia on 15/03/22.
//

import SwiftUI
import WidgetKit

struct WidgetView : View {
    var entry: Provider.Entry

    var body: some View {
        Text(entry.date, style: .time)
    }
}
