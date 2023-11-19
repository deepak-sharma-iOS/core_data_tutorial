//
//  AddDetailsView.swift
//  CoreDataTutorial
//
//  Created by Deepak Sharma on 16/09/23.
//

import SwiftUI

struct AddDetailsView: View {
    @State private var id = ""
    @State private var name = ""
    @State private var age = ""
    @State private var phone = ""
    @State private var address = ""
    @Environment(\.managedObjectContext) private var context
    
    var body: some View {
        List {
            TextField("Enter your id", text: $id)
            TextField("Enter your name", text: $name)
            TextField("Enter your age", text: $age)
            TextField("Enter your phone", text: $phone)
            TextField("Enter your address", text: $address)
            Button("Save Details") {
                update()
            }
            .buttonStyle(.plain)
            .padding(.all, 12)
            .background(Color.green)
            .cornerRadius(12)
        }
    }
    
    func update() {
        let request = User.fetchRequest()
        request.predicate = NSPredicate(format: "id == %@", id)
        do {
            let result = try context.fetch(request)
            
            if result.isEmpty {
                let user = User(context: context)
                user.name = name
                user.age = age
                user.phone = phone
                user.address = address
                user.id = id
                
                do {
                    try context.save()
                    print(URL.documentsDirectory)
                } catch {
                    debugPrint(error.localizedDescription)
                }
            } else {
                guard let firstUser = result.first else { return }
                firstUser.name = name
                firstUser.age = age
                firstUser.phone = phone
                firstUser.address = address
                
                try context.save()
            }
        } catch {
            debugPrint(error.localizedDescription)
        }
    }
}

struct AddDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        AddDetailsView()
    }
}
