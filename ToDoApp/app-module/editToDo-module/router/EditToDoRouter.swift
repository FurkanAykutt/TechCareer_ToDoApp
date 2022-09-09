//
//  EditToDoRouter.swift
//  ToDoApp
//
//  Created by Ebubekir Aykut on 9.09.2022.
//

import Foundation

class EditToDoRouter: PresenterToRouterEditToDoProtocol {
    static func createModule(ref: EditToDoViewController) {
        let presenter: ViewToPresenterEditToDoProtocol & InteractorToPresenterEditToDoProtocol = EditToDoPresenter()

        //View
        ref.editToDoPresenter = presenter

        //Presenter
        ref.editToDoPresenter?.editToDoView = ref
        ref.editToDoPresenter?.editToDoInteractor = EditToDoInteractor()

        //Interactor
        ref.editToDoPresenter?.editToDoInteractor?.editToDoPresenter = presenter
    }
}

