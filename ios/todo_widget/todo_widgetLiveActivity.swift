//
//  todo_widgetLiveActivity.swift
//  todo_widget
//
//  Created by Azizbek Asqaraliyev on 27/07/25.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct todo_widgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct todo_widgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: todo_widgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension todo_widgetAttributes {
    fileprivate static var preview: todo_widgetAttributes {
        todo_widgetAttributes(name: "World")
    }
}

extension todo_widgetAttributes.ContentState {
    fileprivate static var smiley: todo_widgetAttributes.ContentState {
        todo_widgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: todo_widgetAttributes.ContentState {
         todo_widgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: todo_widgetAttributes.preview) {
   todo_widgetLiveActivity()
} contentStates: {
    todo_widgetAttributes.ContentState.smiley
    todo_widgetAttributes.ContentState.starEyes
}
