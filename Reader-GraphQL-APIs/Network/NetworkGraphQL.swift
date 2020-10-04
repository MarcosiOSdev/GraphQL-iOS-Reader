import Foundation
import Apollo

class Network {
    static let shared = Network()
    let client: ApolloClient
    
    init() {
        client = ApolloClient(url: URL(string: "http://localhost:4000/api")!)
    }
}
