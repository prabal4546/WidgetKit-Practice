//
//  WidgetKitCourse_Widget.swift
//  WidgetKitCourse Widget
//
//  Created by Prabaljit Walia on 15/03/22.
//

import WidgetKit
import SwiftUI



@main
struct WidgetKitCourse_Widget: Widget {
    let kind: String = "WidgetKitCourse_Widget"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            WidgetView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct WidgetKitCourse_Widget_Previews: PreviewProvider {
    static var previews: some View {
        WidgetView(entry: SimpleEntry(date: Date()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
