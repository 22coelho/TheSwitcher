//
//  DivisionStateView.swift
//  TheSwitcher_TiagoCoelho
//
//  Created by Tiago Coelho on 08/05/2023.
//

import SwiftUI

struct DivisionStateView: View {
    var division: Division
    
    var body: some View {
        NavigationView {
            VStack {
                Image(division.isOn ? "SwitcherOn" : "SwitcherOff")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom,
                             Constants.imageBottomPadding)
                
                VStack {
                    Text("Your division light is")
                    if division.isOn {
                        Text("ON")
                            .font(.system(size: Constants.textStateFontSize))
                            .bold()
                    } else {
                        Text("OFF")
                            .font(.system(size: Constants.textStateFontSize))
                            .bold()
                    }
                }
                Spacer()
            }
        }
        .navigationTitle(division.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbarBackground(Color.green,
                           for: .navigationBar)
        .toolbarBackground(.visible,
                           for: .navigationBar)
    }
}

enum Constants {
    static let imageBottomPadding: CGFloat = 30
    static let textStateFontSize: CGFloat = 60
}

struct DivisionStateView_Previews: PreviewProvider {
    static var previews: some View {
        DivisionStateView(division: Division(id: .init(),
                                             name: "test",
                                             isOn: true))
    }
}
