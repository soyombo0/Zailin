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
    
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        table.allowsMultipleSelection = true
        return table
    }()
    
    private var viewModel = MarketViewModel()
    
    private var bag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.frame = view.bounds
        bindTableData()
    }

    func bindTableData() {
        // bind items
        viewModel.items.bind(to: tableView.rx.items(
            cellIdentifier: "cell",
            cellType: UITableViewCell.self))
        { row, model, cell in
            cell.textLabel?.text = model.title
            cell.imageView?.image = UIImage(systemName: model.imageName)
        }.disposed(by: bag)
        
        // model selected handler
        tableView.rx.modelSelected(Market.self).bind { product in
            print(product.title)
        }.disposed(by: bag)
        // fetch items
        viewModel.fetchItems()
    }

}

