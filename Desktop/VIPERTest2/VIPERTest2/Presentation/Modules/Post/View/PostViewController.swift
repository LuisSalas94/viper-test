//
//  PostViewController.swift
//  VIPERTest2
//
//  Created by Luis Fernando Salas Gave on 17/01/23.
//

import UIKit

//MARK: Protocol
protocol PostViewProtocol: AnyObject {
    func didReceivePostList(postList: PostResponse)
    func didFailurePostList(error: NSError)
}

//MARK: VIEW
class PostViewController: UIViewController {
    
    static let identifier: String = "PostViewController"
    
    //TODO: presenter
    var presenter: PostPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: get info from external API -> presenter
        //presenter.getPostList()
        //presenter.testing()
    }
}


extension PostViewController: PostViewProtocol {
    func didReceivePostList(postList: PostResponse) {
        
    }
    
    func didFailurePostList(error: NSError) {
        
    }
    
    
}
