import UIKit

func registerUser() {
    let url = URL(string:"https://api.stackexchange.com/2.3/questions?pagesize=1&order=desc&sort=votes&site=stackoverflow&filter=)pe0bT2YUo)Qn0m64ED*6Equ")
    var urlRequest = URLRequest(url: url!)
    URLSession.shared.dataTask(with: urlRequest){(data , httpUrlResponse, error) in
        if (data != nil) {
            
        }
    }
}
