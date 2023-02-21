//
//  ContentView.swift
//  foodDice
//
//  Created by yook on 2023/02/20.
//

import SwiftUI

struct ContentView: View {
    @State var isShowResult = 0
    //@AppStorage ("savedMenuList") var savedMenuList: Array?
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                } label: {
                    Image(systemName: "questionmark.app.fill")
                        .imageScale(.large)
                        .foregroundColor(.white)
                }
            }
            Spacer()
            if isShowResult > 0 {
                Text(menuArr.randomElement()!)
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(Color.white)
            }
            Spacer()
            Button {
                isShowResult += 1
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
