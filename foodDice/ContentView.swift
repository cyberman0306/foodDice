//
//  ContentView.swift
//  foodDice
//
//  Created by yook on 2023/02/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var isShowResult: Bool = false
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                } label: {
                    Image(systemName: "questionmark.app.fill")
                }
            }
            Spacer()
            if isShowResult {
                ShowingMenu()
            }
            Button {
                isShowResult = true
            } label: {
                Image(systemName: "circle.square.fill")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
            }
            Text("roll it!")
            Spacer()
        }
        .padding()

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
