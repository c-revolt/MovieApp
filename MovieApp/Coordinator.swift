//
//  Coordinator.swift
//  MovieApp
//
//  Created by Александр Прайд on 18.10.2022.
//

import UIKit

class Coordinator {
    
    private let assembly: Assembly
    private var navigationController: UINavigationController! = nil
    
    init(assembly: Assembly) {
        self.assembly = assembly
        
    }
    
    func start(window: UIWindow) {
        let homeVC = assembly.makeHome(output: self)
        navigationController = UINavigationController.init(rootViewController: homeVC)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        
    }
}

// MARK: - HomeOutput
extension Coordinator: HomeOutput {
    
}
