//
//  ContentView.swift
//  ToDoSwiftUI
//
//  Created by DAMII on 15/10/24.
//

import SwiftUI

struct TaskListView: View {
    @StateObject private var viewModel = TaskListViewModel()
     
    var body: some View {
        NavigationStack {
            List{
                ForEach(viewModel.tasks) { task in
                    VStack {
                        Text(task.title ?? "")
                        Text(task.content ?? "")
                    }
                }.onDelete(perform: { indexSet in
                    viewModel.deleteTask(task: viewModel.tasks[indexSet.first!])
                    
                })
            }
            .navigationTitle("Tasks")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: {
                        TaskDetailView { title, content in
                            viewModel.addTask(title: title, content: content)
                        }
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        .padding()
    }
}

#Preview {
    TaskListView()
}
