//
//  ContentView.swift
//  foodDice
//
//  Created by yook on 2023/02/20.
//

import SwiftUI

struct ContentView: View {
    @State var isShowResult = 0
    @State private var isHelpModalShow = false
    @State private var isPlusMenuModalShow = false
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    self.isPlusMenuModalShow.toggle()
                } label: {
                    Image(systemName: "plus.square.fill")
                        .imageScale(.large)
                        .foregroundColor(.white)
                }
                .sheet(isPresented: self.$isPlusMenuModalShow) {
                    EditMenuArrayModal()
                }
                Button {
                    self.isHelpModalShow.toggle()
                } label: {
                    Image(systemName: "questionmark.app.fill")
                        .imageScale(.large)
                        .foregroundColor(.white)
                }
                .sheet(isPresented: self.$isHelpModalShow) {
                    HelpModalView()
                }
            }
            Spacer()
            if isShowResult > 0 {
                let menuString = String(menuArr.randomElement() ?? "error!")
                Button {

                } label: {
                    Text(menuString)
                        .font(.system(size: 50, weight: .bold))
                        .foregroundColor(Color.white)
                }
            }
            Spacer()
            Button {
                if isShowResult > 100 {
                    isShowResult = 1
                } else {
                    isShowResult += 1
                }
            } label: {
                Image(systemName: "circle.square.fill")
                    .imageScale(.large)
                    .foregroundColor(.white)
            }
            Text("roll it!")
                .font(.body)
                .fontWeight(.bold)
                .foregroundColor(Color.white)
            Spacer()
        }
        .padding()
        .background(Color.orange)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
