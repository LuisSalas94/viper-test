//
//  PostInteractor.swift
//  VIPERTest2
//
//  Created by Luis Fernando Salas Gave on 17/01/23.
//

import Foundation

//MARK: PROTOCOL
protocol PostInteractorProtocol: AnyObject {
    func fetchPostList(completion: @escaping (Result<PostResponse, NSError>) -> Void)
}

//MARK: INTERACTOR
class PostInteractor {
    private var network: NetworkService = NetworkService()
}


extension PostInteractor: PostInteractorProtocol {
    func fetchPostList(completion: @escaping (Result<PostResponse, NSError>) -> Void) {
        network.getInformation(from: "https://gorest.co.in/public/v1/posts") { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let postList):
                    completion(.success(postList))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
        }
    }
     
}
