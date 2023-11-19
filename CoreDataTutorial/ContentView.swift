//
//  ContentView.swift
//  CoreDataTutorial
//
//  Created by Deepak Sharma on 10/09/23.
//

import SwiftUI
import CoreData

struct ContentView: View {
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \User.age, ascending: true)]
        //        predicate: NSPredicate(format: "name == %@", "Rahul")
    )
    private var users: FetchedResults<User>
    @Environment(\.managedObjectContext) private var context
    @Environment(\.undoManager) private var undoManager
    
    var body: some View {
        NavigationView {
            List(users) { user in
                HStack {
                    Text((user.name ?? "") + ", " + (user.id ?? ""))
                    Spacer()
                    Button("Delete") {
                        delete(user: user)
                    }
                
                }
                
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: AddDetailsView()) {
                        Image(systemName: "plus")
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Undo") {
                        context.undo()
                        do {
                            try context.save()
                        } catch {
                            
                        }
                    }
                
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Redo") {
                        context.redo()
                        do {
                            try context.save()
                        } catch {
                            
                        }
                    }
                }
            }
        }.onAppear {
            context.undoManager = undoManager
        }
    }
    
    func delete(user: User) {
        let request = User.fetchRequest()
        request.predicate = NSPredicate(format: "id == %@", user.id ?? "")
        do {
            let result = try context.fetch(request)
            
            for user in result {
                context.delete(user)
                try context.save()
            }
            
        } catch {
            debugPrint(error.localizedDescription)
        }
    }
}