import SwiftUI

struct AuthorCardView: View {
    let authorName: String
    let blogsCount : Int
    
    var body: some View {
        HStack(alignment: .center) {
            VStack (alignment: .leading) {
                Text(authorName)
                    .font(.title3)
                    .fontWeight(.bold)
                    .lineLimit(1)
                
                Text("\(blogsCount) blogs")
                    .font(.body)
                    .fontWeight(.regular)
                    .padding(
                        EdgeInsets.init(
                            top: 1.0,
                            leading: 0.0,
                            bottom: 16.0,
                            trailing: 0.0)
                    )
                
                Button {
                    
                } label: {
                    Image("eye")
                    Text("See blogs")
                }
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .tint(.black)
                .foregroundColor(.white)
                .controlSize(.large)
            }
            
            Spacer()
            
        }
        .padding()
        .background(Color(.tertiarySystemGroupedBackground))
        .cornerRadius(10.0)
    }
}

struct AuthorCardView_Previews: PreviewProvider {
    static var previews: some View {
        AuthorCardView(authorName: "Jk Rowling", blogsCount: 2)
            .previewLayout(.sizeThatFits)
            .background(.white)
    }
}
