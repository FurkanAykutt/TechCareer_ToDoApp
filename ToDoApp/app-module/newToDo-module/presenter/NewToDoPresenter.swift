//
//  NewToDoPresenter.swift
//  ToDoApp
//
//  Created by Ebubekir Aykut on 9.09.2022.
//

import Foundation

class NewToDoPresenter {
    var newToDoInteractor: PresenterToInteractorNewToDoProtocol?
    var newToDoView: PresenterToViewNewToDoProtocol?

}

//MARK: View To Presenter Protocol Stubs

extension NewToDoPresenter: ViewToPresenterNewToDoProtocol {
    func addNewToDo(_ todo: String) {
        newToDoInteractor?.addNewToDo(todo)
    }
}

//MARK: Interactor To Presenter Protocol Stubs

extension NewToDoPresenter: InteractorToPresenterNewToDoProtocol {
    func navigate() {
        newToDoView?.navigate()
    }
}

