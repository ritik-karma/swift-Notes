import UIKit



var names = ["kanja", "jamnu", "ajfk", "mumbai", "pune", "hathipala"]
 var searchText = ""
var filterName:[String]{
    if searchText.isEmpty {
        return names
    } else {
        return names.filter {$0.contains(searchText.lowercased())
        }
    }
}

