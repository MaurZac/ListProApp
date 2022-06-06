//
//  HomePresenter.swift
//  ListProApp
//
//  Created by Mauricio Zarate on 30/05/22.
//  
//

import Foundation

class HomePresenter  {
    
    // MARK: Properties
    weak var view: HomeViewProtocol?
    var interactor: HomeInteractorInputProtocol?
    var wireFrame: HomeWireFrameProtocol?
    
}

extension HomePresenter: HomePresenterProtocol {
    // TODO: implement presenter methods
    func viewDidLoad() {
        print("aca ando si llego")
    }
    func showDetailView() {
        wireFrame?.presentNewViewDetail(from: view!)
    }
}

extension HomePresenter: HomeInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
