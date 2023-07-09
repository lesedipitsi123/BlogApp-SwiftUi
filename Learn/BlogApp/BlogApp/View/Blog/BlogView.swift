import SwiftUI

struct BlogView : View {
    var body: some View {
        NavigationView {
            List {
                BlogCardView(title: "Diary of a Wimpy Kid", description: "The series follows Greg Heffley, a middle-schooler who illustrates his daily life in a diary. Kinney spent eight years working on the book before showing it to a publisher")
                    .listRowSeparator(.hidden)
                BlogCardView(title: "Diary of a Wimpy Kid", description: "The series follows Greg Heffley, a middle-schooler who illustrates his daily life in a diary. Kinney spent eight years working on the book before showing it to a publisher")
                    .listRowSeparator(.hidden)
                BlogCardView(title: "Diary of a Wimpy Kid", description: "The series follows Greg Heffley, a middle-schooler who illustrates his daily life in a diary. Kinney spent eight years working on the book before showing it to a publisher")
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(id: "plus", placement: .navigationBarTrailing, showsByDefault: true) {
                    Button {
                        // TODO
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
        }
        
    }
}

struct BlogView_Previews: PreviewProvider {
    static var previews: some View {
        BlogView()
    }
}
