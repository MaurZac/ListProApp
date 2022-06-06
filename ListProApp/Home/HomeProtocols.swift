//
//  HomeProtocols.swift
//  ListProApp
//
//  Created by Mauricio Zarate on 30/05/22.
//  
//

import Foundation
import UIKit

protocol HomeViewProtocol: AnyObject {
    // PRESENTER -> VIEW
    var presenter: HomePresenterProtocol? { get set }
}

protocol HomeWireFrameProtocol: AnyObject {
    // PRESENTER -> WIREFRAME
    static func createHomeModule() -> UIViewController
    func presentNewViewDetail(from view: HomeViewProtocol)

}

protocol HomePresenterProtocol: AnyObject {
    // VIEW -> PRESENTER
    var view: HomeViewProtocol? { get set }
    var interactor: HomeInteractorInputProtocol? { get set }
    var wireFrame: HomeWireFrameProtocol? { get set }
    
    func viewDidLoad()
    func showDetailView()
}

protocol HomeInteractorOutputProtocol: AnyObject {
// INTERACTOR -> PRESENTER
}

protocol HomeInteractorInputProtocol: AnyObject {
    // PRESENTER -> INTERACTOR
    var presenter: HomeInteractorOutputProtocol? { get set }
    var localDatamanager: HomeLocalDataManagerInputProtocol? { get set }
    var remoteDatamanager: HomeRemoteDataManagerInputProtocol? { get set }
}

protocol HomeDataManagerInputProtocol: AnyObject {
    // INTERACTOR -> DATAMANAGER
}

protocol HomeRemoteDataManagerInputProtocol: AnyObject {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: HomeRemoteDataManagerOutputProtocol? { get set }
}

protocol HomeRemoteDataManagerOutputProtocol: AnyObject {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol HomeLocalDataManagerInputProtocol: AnyObject {
    // INTERACTOR -> LOCALDATAMANAGER
}
