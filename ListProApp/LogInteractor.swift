//
//  LogInteractor.swift
//  ListProApp
//
//  Created by Mauricio Zarate on 05/06/22.
//  
//

import Foundation

class LogInteractor: LogInteractorInputProtocol {

    // MARK: Properties
    weak var presenter: LogInteractorOutputProtocol?
    var localDatamanager: LogLocalDataManagerInputProtocol?
    var remoteDatamanager: LogRemoteDataManagerInputProtocol?

}

extension LogInteractor: LogRemoteDataManagerOutputProtocol {
    // TODO: Implement use case methods
}
