//
//  DivisionStateView.swift
//  TheSwitcher_TiagoCoelho
//
//  Created by Tiago Coelho on 08/05/2023.
//

import SwiftUI

struct DivisionStateView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("SwitcherOn")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, Constants.imageBottomPadding)
                
                VStack {
                    Text("Your division light is")
                    Text("ON")
                        .font(.system(size: Constants.textStateFontSize))
                        .bold()
                }
                Spacer()
            }
        }
    }
}

enum Constants {
    static let imageBottomPadding: CGFloat = 30
    static let textStateFontSize: CGFloat = 60
}

struct DivisionStateView_Previews: PreviewProvider {
    static var previews: some View {
        DivisionStateView()
    }
}
