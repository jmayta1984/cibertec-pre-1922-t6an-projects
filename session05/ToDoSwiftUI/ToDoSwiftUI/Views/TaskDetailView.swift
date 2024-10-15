//
//  TaskDetailView.swift
//  ToDoSwiftUI
//
//  Created by DAMII on 15/10/24.
//

import SwiftUI

struct TaskDetailView: View {
    @State var title: String = ""
    @Environment(\.dismiss) var dismiss
    let onAddTask: (Task) -> Void
    
    var body: some View {
        NavigationStack{
            TextField("Task", text: $title).padding().textFieldStyle(.roundedBorder)
                .toolbar{
                    ToolbarItem(placement: .topBarTrailing) {
                        Button(action: {
                            let task = Task(title: title)
                            onAddTask(task)
                            dismiss()
                        }){
                            Image(systemName: "tray.and.arrow.down")
                        }
                    }
                }
        }
    }
}

#Preview {
    TaskDetailView { _ in }
    
}
