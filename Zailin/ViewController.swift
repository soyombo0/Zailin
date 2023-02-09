//
//  ViewController.swift
//  Zailin
//
//  Created by Soyombo Mantaagiin on 8.02.2023.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {
    
    let tableView = MarketTableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Setting up the View
        setUpView()
        view.addSubview(tableView)
        tableView.frame = view.bounds
    }
    
    // MARK: - private functions
    
    private func setUpView() {
        view.backgroundColor = .red
    }

}

