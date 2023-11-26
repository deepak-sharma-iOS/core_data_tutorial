//
//  InfoView.swift
//  CoreDataTutorial
//
//  Created by Deepak Sharma on 19/11/23.
//

import SwiftUI

struct InfoView: View {
    let user: User
    var body: some View {
        VStack {
           
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: AddPhoneNumber(user: user)) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}
