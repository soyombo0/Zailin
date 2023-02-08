//
//  MarketViewModel.swift
//  Zailin
//
//  Created by Soyombo Mantaagiin on 8.02.2023.
//

import Foundation
import RxSwift
import RxCocoa

struct MarketViewModel {
    var items = PublishSubject<[Market]>()
    
    func fetchItems() {
        let products = [
            Market(imageName: "house", title: "House"),
            Market(imageName: "gear", title: "Gear"),
            Market(imageName: "airplane", title: "Airplane"),
            Market(imageName: "person.circle", title: "Info"),
            Market(imageName: "bell", title: "Bell")
        ]
        
        items.onNext(products)
        items.onCompleted()
        
    }
}
