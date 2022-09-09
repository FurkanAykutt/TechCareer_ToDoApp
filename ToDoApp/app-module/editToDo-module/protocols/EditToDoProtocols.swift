//
//  EditToDoProtocols.swift
//  ToDoApp
//
//  Created by Ebubekir Aykut on 9.09.2022.
//

import Foundation

//Forward
protocol ViewToPresenterEditToDoProtocol {

    var editToDoInteractor: PresenterToInteractorEditToDoProtocol? { get set }
    var editToDoView: PresenterToViewEditToDoProtocol? { get set }

    func editToDo(_: ToDo)
}

protocol PresenterToInteractorEditToDoProtocol {

    var editToDoPresenter: InteractorToPresenterEditToDoProtocol? { get set }

    func editToDo(_: ToDo)
}

//Back

protocol PresenterToViewEditToDoProtocol {
    func navigate()
}

protocol InteractorToPresenterEditToDoProtocol {
    func navigate()
}

//Router

protocol PresenterToRouterEditToDoProtocol {
    static func createModule(ref: EditToDoViewController)
}

