import SwiftUI

struct BlogCardView: View {
    let title : String
    let description : String
    
    var body: some View {
        HStack {
            VStack (alignment: .leading, spacing: 24.0) {
                Text(title)
                    .font(.title2)
                    .fontWeight(.bold)
                    .lineLimit(2)
                
                Text(description)
                    .font(.body)
                    .fontWeight(.regular)
                    .lineLimit(4)
                
                HStack {
                    Button {
                        
                    } label: {
                        Image("eye")
                        Text("See more")
                    }
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .foregroundColor(.white)
                    .tint(.black)
                    .controlSize(.large)
                    
                    Button {
                        
                    } label: {
                        Image("edit")
                        Text("Edit")
                    }
                    .buttonStyle(.bordered)
                    .buttonBorderShape(.capsule)
                    .foregroundColor(.black)
                    .controlSize(.large)
                }
                
            }
            Spacer()
            
        }
        .padding()
        .background(Color(.tertiarySystemGroupedBackground))
        .cornerRadius(10.0)
    }
}

struct BlogCardView_Previews: PreviewProvider {
    static var previews: some View {
        BlogCardView(title: "Diary ", description: "The series follows Greg Heffley, a middle-schooler who illustrates his daily life in a diary. Kinney spent eight years working on the book before showing it to a publisher")
            .previewLayout(.sizeThatFits)
    }
}
