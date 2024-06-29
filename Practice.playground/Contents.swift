struct user {
    let userName: String
    var invisible: Bool = true
    var freinds: [String] = []
}

var alice = user(userName: "alice")
alice.freinds = ["mohit"]

var bruno = user(userName: "bruno")
bruno.freinds = alice.freinds

alice.freinds.append("ritik")

alice.freinds
bruno.freinds
