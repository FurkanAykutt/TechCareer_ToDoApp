//
//  MainPageRouter.swift
//  ToDoApp
//
//  Created by Ebubekir Aykut on 9.09.2022.
//

import Foundation


class MainPageRouter:PresenterToRouterMainPageProtocol{
    static func createModule(ref: MainPage) {
        let presenter : ViewToPresenterMainPageProtocol & InteractorToPresenterMainPageProtocol = MainPagePresenter()
        
        //View
        ref.mainPagePresenter = presenter
        
        //Presenter
        ref.mainPagePresenter?.mainPageView = ref
        ref.mainPagePresenter?.mainPageInteractor = MainPageInteractor()
        
        //Interactor
        ref.mainPagePresenter?.mainPageInteractor?.mainPagePresenter = presenter
    }
}
