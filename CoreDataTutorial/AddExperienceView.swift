//
//  AddExperienceView.swift
//  CoreDataTutorial
//
//  Created by Deepak Sharma on 26/11/23.
//

import SwiftUI

struct AddExperienceView: View {
    let user: User
    @State private var name = ""
    @State private var years = ""
    @Environment(\.managedObjectContext) private var context
    
    var body: some View {
        List {
            TextField("Enter company name", text: $name)
                .autocorrectionDisabled()
            TextField("Enter phone number", text: $years)
                .autocorrectionDisabled()
            
            Button("Save experience details") {
                addExperience()
            }
            .buttonStyle(.plain)
            .padding(.all, 12)
            .background(Color.green)
            .cornerRadius(12)
        }
    }
    
    func addExperience() {
        if name.isEmpty || years.isEmpty {
            debugPrint("Details can't be empty")
            return
        }
        
        let exp = Exp(context: context)
        exp.name = name
        exp.years = years
        
        user.addToExpes(exp)
        
        do {
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
       
    }
}
