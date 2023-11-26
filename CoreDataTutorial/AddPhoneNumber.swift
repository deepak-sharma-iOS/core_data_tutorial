//
//  AddPhoneNumber.swift
//  CoreDataTutorial
//
//  Created by Deepak Sharma on 19/11/23.
//

import SwiftUI


struct AddPhoneNumber: View {
    let user: User
    @State private var id = ""
    @State private var name = ""
    @Environment(\.managedObjectContext) private var context
    
    var body: some View {
        List {
            TextField("Enter your id", text: $id)
            TextField("Enter your name", text: $name)
            Button("Save Book Details") {
                update()
            }
            .buttonStyle(.plain)
            .padding(.all, 12)
            .background(Color.green)
            .cornerRadius(12)
        }
    }
    
    func update() {
       
    }
}
