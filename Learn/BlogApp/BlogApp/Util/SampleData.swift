import Foundation


class SampleData {
    
    static func getSampleAuthors() -> [Author] {
        return [
            Author(
                id: 1,
                name: "Jeff Kinney",
                blogsCount: getSampleBlogs().filter{ blog in blog.authorId == 1 }.count
            ),
            Author(
                id: 2,
                name: "JK Rowling",
                blogsCount: getSampleBlogs().filter{ blog in blog.authorId == 2 }.count
            ),
            Author(
                id: 3,
                name: "Shakespeare",
                blogsCount: getSampleBlogs().filter{ blog in blog.authorId == 3 }.count
            ),
            Author(
                id: 4,
                name: "Tom Ford",
                blogsCount: getSampleBlogs().filter{ blog in blog.authorId == 4 }.count
            ),
        ];
    }
    
    static func getSampleBlogs() -> [Blog] {
        return [
            Blog(
                id: 1,
                authorId: 1,
                title: "Diary of a Wimpy Kid",
                description: "The series follows Greg Heffley, a middle-schooler who illustrates his daily life in a diary. Kinney spent eight years working on the book before showing it to a publisher"
            ),
            Blog(
                id: 2,
                authorId: 1,
                title: "Diary of a Wimpy Kid: Dog Days",
                description: "The series follows Greg Heffley, a middle-schooler who illustrates his daily life in a diary. Kinney spent eight years working on the book before showing it to a publisher"
            ),
            Blog(
                id: 3,
                authorId: 2,
                title: "Harry Potter and the philosopher's stone",
                description: "Harry Potter, an eleven-year-old orphan, discovers that he is a wizard and is invited to study at Hogwarts. Even as he escapes a dreary life and enters a world of magic, he finds trouble awaiting him"
            ),
            Blog(
                id: 4,
                authorId: 2,
                title: "Harry potter and the prisoner of azkaban",
                description: "Harry, Ron and Hermoine return to Hogwarts just as they learn about Sirius Black and his plans to kill Harry. However, when Harry runs into him, he learns that the truth is far from reality."
            ),
        ];
    }
}
