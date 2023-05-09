//
//  DivisionViewModel.swift
//  TheSwitcher_TiagoCoelho
//
//  Created by Tiago Coelho on 09/05/2023.
//

import Foundation

class DivisionViewModel: ObservableObject {
    @Published var divisions: [Division] = []
    
    func addDivision(name: String,
                     initialState: Bool) {
        divisions.append(Division(id: UUID(),
                                  name: name,
                                  isOn: initialState))
    }
}
