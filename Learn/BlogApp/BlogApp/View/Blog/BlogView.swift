import SwiftUI

struct BlogView : View {
    var body: some View {
        NavigationView {
            List(SampleData.getSampleBlogs()) { blog in
                BlogCardView(
                    title: blog.title,
                    description: blog.description
                )
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Jk Rowling's blogs")
            .toolbar {
                ToolbarItem(
                    id: "plus",
                    placement: .navigationBarTrailing,
                    showsByDefault: true) {
                        Button {
                            
                        } label: {
                            Image("edit_square")
                        }.tint(.black)
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
