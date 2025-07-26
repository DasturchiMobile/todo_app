//
//  todo_widget.swift
//  todo_widget
//
//  Created by Azizbek Asqaraliyev on 27/07/25.
//
import WidgetKit
import SwiftUI

// 1. Entry
struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationAppIntent
    let all: Int
    let todo: Int
    let done: Int
}

// 2. Provider
struct Provider: AppIntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationAppIntent(), all: 0, todo: 0, done: 0)
    }

    func snapshot(for configuration: ConfigurationAppIntent, in context: Context) async -> SimpleEntry {
        let stats = loadStats()
        return SimpleEntry(date: Date(), configuration: configuration, all: stats.all, todo: stats.todo, done: stats.done)
    }

    func timeline(for configuration: ConfigurationAppIntent, in context: Context) async -> Timeline<SimpleEntry> {
        let stats = loadStats()
        let entry = SimpleEntry(date: Date(), configuration: configuration, all: stats.all, todo: stats.todo, done: stats.done)
        return Timeline(entries: [entry], policy: .never)
    }

    private func loadStats() -> (all: Int, todo: Int, done: Int) {
        let defaults = UserDefaults(suiteName: "group.uz.mobildasturchi.todo_app")
        let stats = defaults?.dictionary(forKey: "todo_stats") as? [String: Int] ?? [:]

        return (
            all: stats["all"] ?? 0,
            todo: stats["todo"] ?? 0,
            done: stats["done"] ?? 0
        )
    }
}

// 3. View
struct todo_widgetEntryView: View {
    var entry: SimpleEntry

    var body: some View {
        HStack(spacing: 4) {
            StatBox(color: .orange, title: "Barchasi", value: entry.all)
            StatBox(color: .purple, title: "Baj.\nmagan", value: entry.todo)
            StatBox(color: .blue, title: "Baj.\nilgan", value: entry.done)
        }
        .padding(6)
    }
}

struct StatBox: View {
    var color: Color
    var title: String
    var value: Int

    var body: some View {
        VStack {
            Text(title)
                .font(.caption2)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)

            Text("\(value)")
                .font(.headline)
                .bold()
                .foregroundColor(.black)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(color)
        .cornerRadius(8)
    }
}

// 4. Widget
struct todo_widget: Widget {
    let kind: String = "todo_widget"

    var body: some WidgetConfiguration {
        AppIntentConfiguration(kind: kind, intent: ConfigurationAppIntent.self, provider: Provider()) { entry in
            todo_widgetEntryView(entry: entry)
                .containerBackground(.fill.tertiary, for: .widget)
        }
        .configurationDisplayName("Todo statistikasi")
        .description("Barchasi, bajarilgan, bajarilmagan sonlari.")
        .supportedFamilies([.systemMedium])
    }
}

// 5. Preview
#Preview(as: .systemMedium) {
    todo_widget()
} timeline: {
    SimpleEntry(date: .now, configuration: ConfigurationAppIntent(), all: 20, todo: 10, done: 10)
}
