//
//  HomeViewModel.swift
//  MovieApp
//
//  Created by Александр Прайд on 03.10.2022.
//

import Foundation

// MARK: - HomeViewModelProtocol
protocol HomeViewModelProtocol: AnyObject {
    
}


// MARK: - HomeViewModel
final class HomeViewModel {
    
    weak var view: HomeViewControllerProtocol?
    private weak var output: HomeOutput?
    
    init(output: HomeOutput) {
        self.output = output
    }
    
}


// MARK: - HomeViewModelProtocol
extension HomeViewModel: HomeViewModelProtocol {
    
}
