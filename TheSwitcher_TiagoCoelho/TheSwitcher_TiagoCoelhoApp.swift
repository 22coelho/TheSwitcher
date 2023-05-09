//
//  TheSwitcher_TiagoCoelhoApp.swift
//  TheSwitcher_TiagoCoelho
//
//  Created by Tiago Coelho on 08/05/2023.
//

import SwiftUI

@main
struct TheSwitcher_TiagoCoelhoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: createViewModel())
        }
    }
    
    func createViewModel() -> DivisionViewModel {
        var list: [Division] = []
        
        list.append(Division(id: .init(),
                             name: "Kitchen",
                             isOn: false))
        list.append(Division(id: .init(),
                             name: "Living Room",
                             isOn: false))
        list.append(Division(id: .init(),
                             name: "Dinner Room",
                             isOn: false))
        list.append(Division(id: .init(),
                             name: "Master Bedroom",
                             isOn: false))
        list.append(Division(id: .init(),
                             name: "Guest's Bedroom",
                             isOn: false))
        
        let viewModel: DivisionViewModel = DivisionViewModel()
        viewModel.divisions = list
        return viewModel
    }
}
