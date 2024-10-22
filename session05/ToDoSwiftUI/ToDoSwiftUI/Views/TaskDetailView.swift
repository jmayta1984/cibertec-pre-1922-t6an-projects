//
//  TaskDetailView.swift
//  ToDoSwiftUI
//
//  Created by DAMII on 15/10/24.
//

import SwiftUI

struct TaskDetailView: View {
    
    @State var title: String = ""
    @State var content: String = ""
    
    @Environment(\.dismiss) var dismiss
    
    let onAddTask: (String, String) -> Void
    
    var body: some View {
        NavigationStack{
            VStack {
                TextField("Title", text: $title).padding().textFieldStyle(.roundedBorder)
                TextField("Content", text: $content).padding().textFieldStyle(.roundedBorder)
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        onAddTask(title, content)
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
    TaskDetailView { _, _ in }
    
}
