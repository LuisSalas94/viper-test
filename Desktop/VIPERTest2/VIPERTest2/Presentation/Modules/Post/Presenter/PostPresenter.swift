//
//  PostPresenter.swift
//  VIPERTest2
//
//  Created by Luis Fernando Salas Gave on 17/01/23.
//

//MARK: Protocol
protocol PostPresenterProtocol: AnyObject {
    //Get data from API
    func getPostList()
    func testing()
}


//MARK: PRESENTER
class PostPresenter {
    //TODO: view, router, interactor
   private weak var view: PostViewProtocol?
   private var router: PostRouterProtocol
   private var interactor: PostInteractorProtocol
    
   private var postList: [Post] = []
          
   //TODO: Create constructor
    init(view: PostViewProtocol, router: PostRouterProtocol, interactor: PostInteractorProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}


extension PostPresenter: PostPresenterProtocol {
    func testing() {
        print("It's working")
    }
    
    
   func getPostList() {
        interactor.fetchPostList { result in
            switch result {
            case .success(let postList):
                self.postList = postList.data
                self.view?.didReceivePostList(postList: postList)
            case .failure(let error):
                self.view?.didFailurePostList(error: error)
            }
        }
    }
    
    
     
}
