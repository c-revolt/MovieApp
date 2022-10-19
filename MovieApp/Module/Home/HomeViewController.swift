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
        
        view.backgroundColor = #colorLiteral(red: 0.232907176, green: 0.2107973099, blue: 0.2698917389, alpha: 1)
        
        setupNavBar()
    }
    
    
    
    fileprivate func setupNavBar() {
       
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
        
        let logoContainer = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 30))

        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "mainLogo")
        imageView.image = image
        logoContainer.addSubview(imageView)

        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: logoContainer)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search,
                                                            target: self,
                                                            action: nil)
        navigationItem.rightBarButtonItem?.tintColor = .white
        
        
    }


}

// MARK: - HomeViewControllerProtocol
extension HomeViewController: HomeViewControllerProtocol {
    
}
