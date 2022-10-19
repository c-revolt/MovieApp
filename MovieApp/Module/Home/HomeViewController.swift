//
//  ViewController.swift
//  MovieApp
//
//  Created by Александр Прайд on 02.10.2022.
//

import UIKit

// MARK: - HomeViewControllerProtocol
protocol HomeViewControllerProtocol: AnyObject {
    
}

// MARK: - HomeViewController
class HomeViewController: UIViewController {

    private let viewModel: HomeViewModelProtocol
    
    init(viewModel: HomeViewModelProtocol) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
    }
    

}

// MARK: - HomeViewControllerProtocol
extension HomeViewController: HomeViewControllerProtocol {
    
}
