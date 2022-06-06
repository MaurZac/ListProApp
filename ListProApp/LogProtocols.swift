//
//  LogProtocols.swift
//  ListProApp
//
//  Created by Mauricio Zarate on 05/06/22.
//  
//

import Foundation
import UIKit

protocol LogViewProtocol: AnyObject {
    // PRESENTER -> VIEW
    var presenter: LogPresenterProtocol? { get set }
    //func presenterPushDataView()
}

protocol LogWireFrameProtocol: AnyObject {
    // PRESENTER -> WIREFRAME
    static func createLogModule() -> UIViewController
    func presentNewViewDetail(from view: LogViewProtocol)
}

protocol LogPresenterProtocol: AnyObject {
    // VIEW -> PRESENTER
    var view: LogViewProtocol? { get set }
    var interactor: LogInteractorInputProtocol? { get set }
    var wireFrame: LogWireFrameProtocol? { get set }
    
    func viewDidLoad()
    func showDetailView()


}

protocol LogInteractorOutputProtocol: AnyObject {
// INTERACTOR -> PRESENTER
}

protocol LogInteractorInputProtocol: AnyObject {
    // PRESENTER -> INTERACTOR
    var presenter: LogInteractorOutputProtocol? { get set }
    var localDatamanager: LogLocalDataManagerInputProtocol? { get set }
    var remoteDatamanager: LogRemoteDataManagerInputProtocol? { get set }
}

protocol LogDataManagerInputProtocol: AnyObject {
    // INTERACTOR -> DATAMANAGER
}

protocol LogRemoteDataManagerInputProtocol: AnyObject {
    // INTERACTOR -> REMOTEDATAMANAGER
    var remoteRequestHandler: LogRemoteDataManagerOutputProtocol? { get set }
}

protocol LogRemoteDataManagerOutputProtocol: AnyObject {
    // REMOTEDATAMANAGER -> INTERACTOR
}

protocol LogLocalDataManagerInputProtocol: AnyObject {
    // INTERACTOR -> LOCALDATAMANAGER
}
