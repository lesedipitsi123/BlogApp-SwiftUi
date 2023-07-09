//
//  BlogCardView.swift
//  BlogApp
//
//  Created by Lesedi Pitsi on 2023/02/20.
//

import SwiftUI

struct BlogCardView: View {
    let title : String
    let description : String
    
    var body: some View {
        VStack (alignment: .leading, spacing: 20.0) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .lineLimit(2)
            
            Text(description)
                .font(.caption)
                .fontWeight(.medium)
            
            Button {
                // TODO
            } label: {
                Image(systemName: "pencil.circle.fill")
                                .imageScale(.medium)
                Text("Edit")
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)

        }
        .padding()
        .background(Color(.tertiarySystemFill))
        .cornerRadius(16)
        .shadow(color: .secondary, radius: 0)
    }
}

struct BlogCardView_Previews: PreviewProvider {
    static var previews: some View {
        BlogCardView(title: "Diary of a Wimpy Kid", description: "The series follows Greg Heffley, a middle-schooler who illustrates his daily life in a diary. Kinney spent eight years working on the book before showing it to a publisher")
            .previewLayout(.sizeThatFits)
    }
}
