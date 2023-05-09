//
//  AddDivisionModalView.swift
//  TheSwitcher_TiagoCoelho
//
//  Created by Tiago Coelho on 09/05/2023.
//

import SwiftUI

struct AddDivisionModalView: View {
    @Environment(\.dismiss) var dismiss
    var viewModel: DivisionViewModel
    @State var divisionName: String = ""
    @State var initialState: Bool = false
    
    var body: some View {
        VStack {
            Form {
                TextField("Division Name",
                          text: $divisionName)
                
                Toggle(isOn: $initialState) {
                    Text("Light is \(initialState ? "ON" : "OFF")")
                }
                
                Button {
                    if !divisionName.isEmpty {
                        viewModel.addDivision(name: divisionName,
                                              initialState: initialState)
                        dismiss()
                    }
                } label: {
                    Text("Add division")
                }
            }
        }
    }
}

struct AddDivisionModalView_Previews: PreviewProvider {
    static var previews: some View {
        AddDivisionModalView(viewModel: DivisionViewModel())
    }
}
