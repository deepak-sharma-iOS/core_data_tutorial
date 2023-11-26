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
            Text(user.expes?.first?.name ?? "")
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: AddExperienceView(user: user)) {
                    Image(systemName: "plus")
                }
            }
        }.onAppear {
            print(user.expes)
        }
    }
}
