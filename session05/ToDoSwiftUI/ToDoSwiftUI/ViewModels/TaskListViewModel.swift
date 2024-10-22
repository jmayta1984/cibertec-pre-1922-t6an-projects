//
//  TaskListViewModel.swift
//  ToDoSwiftUI
//
//  Created by DAMII on 22/10/24.
//

import Foundation
import CoreData

class TaskListViewModel: ObservableObject {
    @Published var tasks:[Task] = []
    private var context: NSManagedObjectContext = PersistenceController.shared.container.viewContext
    
    init() {
        self.fetchAllTasks()
    }
    
    func addTask(title: String, content: String) {
        let task = Task(context: context)
        task.title = title
        task.content = content
        saveContext()
        fetchAllTasks()
    }
    
    func deleteTask(task: Task) {
        context.delete(task)
        saveContext()
    }
    
    func fetchAllTasks() {
        let request = Task.fetchAllTaskRequest()
        do {
            tasks = try context.fetch(request)
        } catch (let error){
            print(error)
        }
    }

    private func saveContext() {
        if context.hasChanges {
            do {
                try context.save()
            } catch (let error) {
                print(error)
            }
            
        }
    }
}
