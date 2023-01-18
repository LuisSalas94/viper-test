//
//  PostRouter.swift
//  VIPERTest2
//
//  Created by Luis Fernando Salas Gave on 17/01/23.
//

import UIKit

protocol PostRouterProtocol: AnyObject {
    
}

class PostRouter {
    //MARK: Current viewController
    var currentVC: UIViewController
    
    init(currentVC: UIViewController) {
        self.currentVC = currentVC
    }
}

extension PostRouter: PostRouterProtocol {
    
}



