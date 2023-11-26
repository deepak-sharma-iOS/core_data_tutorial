//
//  ExperiencesView.swift
//  CoreDataTutorial
//
//  Created by Deepak Sharma on 26/11/23.
//

import SwiftUI

struct ExperiencesView: View {
    let user: User
    
    var body: some View {
        VStack {
           
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: AddExperienceView(user: user)) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}
