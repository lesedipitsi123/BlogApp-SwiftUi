//
//  AuthorCardView.swift
//  BlogApp
//
//  Created by Lesedi Pitsi on 2023/02/20.
//

import SwiftUI

struct AuthorCardView: View {
    let authorName: String
    let blogsCount : Int
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            VStack (alignment: .leading) {
                Text(authorName)
                    .font(.title)
                    .fontWeight(.bold)
                    .lineLimit(2)
                
                Text("\(blogsCount) blogs")
                    .font(.caption)
                    .fontWeight(.medium)
            }
            
            Button {
                // TODO
                
            } label: {
                Image(systemName: "ellipsis")
                    .foregroundColor(.gray)
                    .imageScale(.medium)
            }

        }
        .padding()
        .background(Color(.tertiarySystemFill))
        .cornerRadius(10)
        .shadow(radius: 8)
    }
}

struct AuthorCardView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorCardView(authorName: "Jk Rowling", blogsCount: 2)
            .previewLayout(.sizeThatFits)
            .background(.white)
    }
}
