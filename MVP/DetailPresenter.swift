//
//  DetailPresenter.swift
//  MVP
//
//  Created by Sanatzhan Aimukambetov on 27.12.2020.
//

import Foundation

protocol DetailViewProtocol: class {
    func setComment(comment: Comment?)
}

protocol DetailViewPresenterProtocol: class {
    init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, comment: Comment?)
    func beginComment()
}

class DetailPresenter: DetailViewPresenterProtocol {
    weak var view: MainViewProtocol?
    let networkService: NetworkServiceProtocol!
    var comments: [Comment]?
    
    required init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, comment: Comment?) {
        <#code#>
    }
    
    func beginComment() {
        <#code#>
    }
}
