//
//  EditToDoPresenter.swift
//  ToDoApp
//
//  Created by Ebubekir Aykut on 9.09.2022.
//

import Foundation

class EditToDoPresenter {
    var editToDoInteractor: PresenterToInteractorEditToDoProtocol?
    var editToDoView: PresenterToViewEditToDoProtocol?

}

//MARK: View To Presenter Protocol Stubs

extension EditToDoPresenter: ViewToPresenterEditToDoProtocol {
    func editToDo(_ todo: ToDo) {
        editToDoInteractor?.editToDo(todo)
    }
}

//MARK: Interactor To Presenter Protocol Stubs

extension EditToDoPresenter: InteractorToPresenterEditToDoProtocol {
    func navigate() {
        editToDoView?.navigate()
    }
}

