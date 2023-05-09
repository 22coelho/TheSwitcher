//
//  ContentView.swift
//  TheSwitcher_TiagoCoelho
//
//  Created by Tiago Coelho on 08/05/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = DivisionViewModel()
    @State private var showingSheet = false
    
    var body: some View {
        NavigationView {
            VStack {
                List($viewModel.divisions, id: \.id) { $division in
                    HStack {
                        ZStack {
                            NavigationLink {
                                DivisionStateView(division: division)
                            } label: {
                                EmptyView()
                            }
                            .buttonStyle(.plain)
                            .opacity(0)
                            .fixedSize()
                            Text(division.name)
                        }
                        Toggle("", isOn: $division.isOn)
                    }.padding(.vertical)
                }
                .frame(maxWidth: .infinity)
                .listStyle(.plain)
                .scrollContentBackground(.hidden)
                Spacer()
            }
            .navigationTitle("The Switcher App")
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(Color.green,
                               for: .navigationBar)
            .toolbarBackground(.visible,
                               for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(role: .none) {
                        showingSheet.toggle()
                    } label: {
                        Image(systemName: "plus")
                    } .sheet(isPresented: $showingSheet) {
                        AddDivisionModalView(viewModel: viewModel)
                    }
                }
            }
        }.accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: DivisionViewModel())
    }
}
