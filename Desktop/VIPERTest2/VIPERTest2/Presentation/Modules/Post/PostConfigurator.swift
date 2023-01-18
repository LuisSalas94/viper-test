//
//  PostConfigurator.swift
//  VIPERTest2
//
//  Created by Luis Fernando Salas Gave on 17/01/23.
//

import UIKit

class PostConfigurator {
    class func make() -> UIViewController {
        
        let view = UIStoryboard.init(name: "Main", bundle: Bundle(for: PostViewController.self)).instantiateViewController(withIdentifier: PostViewController.identifier) as! PostViewController
        let router: PostRouterProtocol = PostRouter(currentVC: view)
        let interactor: PostInteractorProtocol = PostInteractor()
        let presenter: PostPresenterProtocol = PostPresenter(view: view, router: router, interactor: interactor)
        
        view.presenter = presenter
               
        return view
    }
}
