//
//  EditToDoInteractor.swift
//  ToDoApp
//
//  Created by Ebubekir Aykut on 9.09.2022.
//

import Foundation

class EditToDoInteractor {
    var editToDoPresenter: InteractorToPresenterEditToDoProtocol?

    let db: FMDatabase?

    init() {
        let targetPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!

        let databaseURL = URL(fileURLWithPath: targetPath).appendingPathComponent("ToDo.sqlite")

        db = FMDatabase(path: databaseURL.path)
    }
}


//MARK: Presenter To Interactor Protocol Stubs
extension EditToDoInteractor: PresenterToInteractorEditToDoProtocol {


    func editToDo(_ todo: ToDo) {

        db?.open()

        do {
            try db!.executeUpdate("UPDATE ToDoMain SET text = ?, date = ? WHERE id = ? ", values: [todo.todoText!, todo.date!, todo.id!])
            editToDoPresenter?.navigate()
        } catch {
            print(error.localizedDescription)
        }

        db?.close()
    }
}

