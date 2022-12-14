//
//  MainPageProtocols.swift
//  ToDoApp
//
//  Created by Ebubekir Aykut on 9.09.2022.
//

import Foundation


//Forward
protocol ViewToPresenterMainPageProtocol {

    var mainPageInteractor: PresenterToInteractorMainPageProtocol? { get set }
    var mainPageView: PresenterToViewMainPageProtocol? { get set }

    func load()
    func search(with: String)
    func delete(with: Int, index: IndexPath)
}

protocol PresenterToInteractorMainPageProtocol {

    var mainPagePresenter: InteractorToPresenterMainPageProtocol? { get set }

    func loadFromDB()
    func searchDb(with: String)
    func delete(with: Int, index: IndexPath)
}

//Back

protocol PresenterToViewMainPageProtocol {
    func setArray(_: Array<ToDo>)
    func deleteAnimation(at: IndexPath)
}

protocol InteractorToPresenterMainPageProtocol {
    func sendArray(_: Array<ToDo>)
    func sendDeleteAnimation(at: IndexPath)
}

//Router

protocol PresenterToRouterMainPageProtocol {
    static func createModule(ref: MainPage)
}

