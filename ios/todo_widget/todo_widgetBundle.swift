//
//  todo_widgetBundle.swift
//  todo_widget
//
//  Created by Azizbek Asqaraliyev on 27/07/25.
//

import WidgetKit
import SwiftUI

@main
struct todo_widgetBundle: WidgetBundle {
    var body: some Widget {
        todo_widget()
        todo_widgetControl()
        todo_widgetLiveActivity()
    }
}
