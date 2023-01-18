//
//  NetworkService.swift
//  VIPERTest2
//
//  Created by Luis Fernando Salas Gave on 17/01/23.
//

import Foundation

final public class NetworkService {
    
    func getInformation(from url: String, completion: @escaping (Result<PostResponse, NSError>) -> Void){
        
        URLSession.shared.dataTask(with: URL(string: url)!) { data, response, error in
            
            guard let data = data, error == nil else {
                completion(.failure(NSError(domain: "Fallo al obtener la informacion", code: 1000)))
                return
            }
            
            do {
                
                let decoder = JSONDecoder()
                let result = try? decoder.decode(PostResponse.self, from: data)
                
                guard let result = result else {
                    completion(.failure(NSError(domain: "Fallo al parsear la data", code: 1001)))
                    return
                }
                
                completion(.success(result))
                
            }catch let error as NSError {
                completion(.failure(error))
            }
            
        }.resume()
    }
    
}

