//
//  LogPresenter.swift
//  ListProApp
//
//  Created by Mauricio Zarate on 05/06/22.
//  
//

import Foundation

class LogPresenter  {
    
    // MARK: Properties
    weak var view: LogViewProtocol?
    var interactor: LogInteractorInputProtocol?
    var wireFrame: LogWireFrameProtocol?
    
}

extension LogPresenter: LogPresenterProtocol {
   
    
    
    
    // TODO: implement presenter methods
    func viewDidLoad() {
    }
    
    func showDetailView() {
        wireFrame?.presentNewViewDetail(from: view!)
    }
    
}

extension LogPresenter: LogInteractorOutputProtocol {
    // TODO: implement interactor output methods
}
