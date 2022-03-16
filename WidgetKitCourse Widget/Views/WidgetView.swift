//
//  WidgetView.swift
//  WidgetKitCourse WidgetExtension
//
//  Created by Prabaljit Walia on 15/03/22.
//

import SwiftUI
import WidgetKit

struct WidgetView : View {
    @Environment(\.widgetFamily) var widgetFamily
    var entry: Provider.Entry

    var body: some View {
        switch widgetFamily{
        case .systemMedium:
            MediumSizeView(entry: entry)
        case .systemLarge:
            LargeSizeView(entry: entry)
        default:
            Text("Not implemented")
            
        }
    }
}
