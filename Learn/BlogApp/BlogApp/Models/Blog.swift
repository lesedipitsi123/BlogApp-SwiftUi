struct Blog : Identifiable, Hashable {
    let id: Int
    let authorId: Int
    let title: String
    let description: String
}
