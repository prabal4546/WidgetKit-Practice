//
//  Provider.swift
//  WidgetKitCourse WidgetExtension
//
//  Created by Prabaljit Walia on 15/03/22.
//

import WidgetKit
import SwiftUI
struct Provider: TimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), todos: [.placeholder(0), .placeholder(1)])
    }

    func getSnapshot(in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        Task{
            do{
                //fetch all todos
                let todos = try await TodoService.shared.getAllTodos()
                let fiveTodos = Array(todos.prefix(5))
                let entry = SimpleEntry(date: .now, todos: fiveTodos)
                
                completion(entry)
                
            }catch{
                completion(SimpleEntry(date: .now, todos: [.placeholder(0)]))
            }
        }
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<SimpleEntry>) -> ()) {
        Task{
            do{
                let allTodos = try await TodoService.shared.getAllTodos()
                let fiveTodos = Array(allTodos.prefix(5))
                let entry = SimpleEntry(date: .now, todos: fiveTodos)
                let timeline = Timeline(entries: [entry], policy: .after(.now.advanced(by: 60*60*30)))
                completion(timeline)
                
            }catch{
                let entries = [SimpleEntry(date: .now, todos: [.placeholder(0)])]
                let timeline = Timeline(entries: entries, policy: .after(.now.advanced(by: 60*60*30)))
                completion(timeline)
            }
        }
    }
}
