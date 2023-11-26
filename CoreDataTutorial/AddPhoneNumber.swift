//
//  AddPhoneNumber.swift
//  CoreDataTutorial
//
//  Created by Deepak Sharma on 19/11/23.
//

import SwiftUI

struct AddPhoneNumber: View {
    let user: User
    @State private var provider = ""
    @State private var phone = ""
    @Environment(\.managedObjectContext) private var context
    
    var body: some View {
        List {
            TextField("Enter provider name", text: $provider)
            TextField("Enter phone number", text: $phone)
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
        let phone = Phone(context: context)
        phone.provider = provider
        phone.phone = self.phone
        
        user.phones = phone
        
        do {
            try context.save()
        } catch {
            debugPrint(error.localizedDescription)
        }
    }
}
