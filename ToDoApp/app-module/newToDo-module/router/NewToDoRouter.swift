//
//  NewToDoRouter.swift
//  ToDoApp
//
//  Created by Ebubekir Aykut on 9.09.2022.
//

import Foundation


class NewToDoRouter:PresenterToRouterNewToDoProtocol{
    static func createModule(ref: NewToDoViewController) {
        let presenter: ViewToPresenterNewToDoProtocol & InteractorToPresenterNewToDoProtocol = NewToDoPresenter()
        
        //View
        ref.NewToDoPresenter = presenter
        
        //Presenter
        ref.NewToDoPresenter?.newToDoView = ref
        ref.NewToDoPresenter?.newToDoInteractor = NewToDoInteractor()
        
        //Interactor
        ref.NewToDoPresenter?.newToDoInteractor?.newToDoPresenter = presenter
    }
}
