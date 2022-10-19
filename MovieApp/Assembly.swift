//
//  Assembly.swift
//  MovieApp
//
//  Created by Александр Прайд on 18.10.2022.
//

import UIKit

class Assembly {
    
    func makeHome(output: HomeOutput) -> UIViewController {
        let viewModel = HomeViewModel(output: output)
        let view = HomeViewController(viewModel: viewModel)
        viewModel.view = view
        
        return view
    }
}
