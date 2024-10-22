//
//  Task.swift
//  ToDoSwiftUI
//
//  Created by DAMII on 15/10/24.
//

import Foundation
import CoreData

class Task: NSManagedObject, Identifiable {
    @NSManaged var title: String?
    @NSManaged var content: String?
    
    static func fetchAllTaskRequest() -> NSFetchRequest<Task> {
        return NSFetchRequest<Task>(entityName: "Task")
    }
}
