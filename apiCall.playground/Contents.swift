import Foundation

func registerUser () {
    
    let url = URL(string: "https://www.apple.com/in/?afid=p238%7CspzIDw8X2-dc_mtid_187079nc38483_pcrid_702926213936_pgrid_112258962387_pntwk_g_pchan__pexid__ptid_kwd-297832030443_&cid=aos-IN-kwgo-brand--slid---product-")
    
    var urlRequest = URLRequest(url: url!)
    URLSession.shared.dataTask(with: urlRequest){
        (data, httpUrlResponse, error) in
        if (data != nil){
            let response = String(data: data!, encoding: .utf8)
            print(response!)
        }
    }.resume()
    ///resume; with treat this block as async (it will be resumed if suspended)
}
 
registerUser()
print("hii")
