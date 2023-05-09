//
//  DivisionViewModelProtocol.swift
//  TheSwitcher_TiagoCoelho
//
//  Created by Tiago Coelho on 09/05/2023.
//

import Foundation

protocol DivisionViewModelProtocol {
    var divisions: [Division] { get }
    
    func addDivision(name: String,
                     initialState: Bool)
}
