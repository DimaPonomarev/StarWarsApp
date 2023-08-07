//
//  MainViewModel.swift
//  StarWarsApp
//
//  Created by Дмитрий Пономарев on 07.08.2023.
//

import Foundation
import RxCocoa

protocol MainViewModelProtocol {
    
    typealias Input = (
        sarchText: Driver<String>, ())
    typealias Output = ()

    var input: MainViewModelProtocol.Input { get }
    var output: MainViewModelProtocol.Output { get }
}

class MainViewModel: MainViewModelProtocol {
    
    let input: MainViewModelProtocol.Input
    let output: MainViewModelProtocol.Output
    
    init(input: MainViewModelProtocol.Input) {
        self.input = input
        self.output = MainViewModel.output(intput: self.input)
    }
}

private extension MainViewModel {
    
    static func output(intput: MainViewModelProtocol.Input) -> MainViewModelProtocol.Output {
        return ()
    }
}
