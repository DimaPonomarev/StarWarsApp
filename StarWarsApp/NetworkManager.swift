//
//  NetworkManager.swift
//  StarWarsApp
//
//  Created by Дмитрий Пономарев on 07.08.2023.
//

import Foundation

class NetworkManager {
    
    let url = "https://swapi.dev/api/people/1"
    
    func makeRequest() {
        guard let urlString = URL(string: url) else { return }
        URLSession.shared.dataTask(with: URLRequest(url: urlString)) { data, response, error in
            guard let data = data else { return }
            do {
                let json = try JSONDecoder().decode(TetstModel.self, from: data)
                print(json)
            } catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
