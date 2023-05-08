//
//  ContentView.swift
//  TheSwitcher_TiagoCoelho
//
//  Created by Tiago Coelho on 08/05/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showGreeting = true
    
    var body: some View {
        NavigationView {
            VStack() {
                VStack {
                    HStack {
                        Text("Kitchen")
                        Toggle("", isOn: $showGreeting)
                    }
                    Divider()
                    HStack {
                        Text("Living Room")
                        Toggle("", isOn: $showGreeting)
                    }
                    Divider()
                    HStack {
                        Text("Master bedroom")
                        Toggle("", isOn: $showGreeting)
                    }
                    Divider()
                    HStack {
                        Text("Guest's bedroom")
                        Toggle("", isOn: $showGreeting)
                    }
                    Divider()
                }
                .padding()
                Spacer()
            }
            .navigationTitle("The Switcher App")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.green, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
