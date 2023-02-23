//
//  TopButtonsView.swift
//  foodDice
//
//  Created by cnu on 2023/02/23.
//

import SwiftUI

struct TopButtonsView: View {
    @State private var isHelpModalShow = false
    @State private var isPlusMenuModalShow = false
    @State private var isSettingModalShow = false
    @Binding var colorMainValue: Color
    @Binding var colorSubValue: Color
    var body: some View {
        HStack {
            Spacer()
            Button {
                self.isPlusMenuModalShow.toggle()
            } label: {
                Image(systemName: "plus.square.fill")
                    .imageScale(.large)
                    .foregroundColor(colorSubValue)
            }
            .sheet(isPresented: self.$isPlusMenuModalShow) {
                EditMenuArrayModal()
            }
            Button {
                self.isHelpModalShow.toggle()
            } label: {
                Image(systemName: "questionmark.app.fill")
                    .imageScale(.large)
                    .foregroundColor(colorSubValue)
            }
            .sheet(isPresented: self.$isHelpModalShow) {
                HelpModalView(colorMainValue: $colorMainValue, colorSubValue: $colorSubValue)
            }
            Button {
                self.isSettingModalShow.toggle()
            } label: {
                Image(systemName: "paintbrush.fill")
                    .imageScale(.large)
                    .foregroundColor(colorSubValue)
            }
            .sheet(isPresented: self.$isSettingModalShow) {
                SettingModalView(colorMainValue: $colorMainValue, colorSubValue: $colorSubValue)
            }
            Spacer()
                .frame(width: 10)
        }
        .background(colorMainValue)
    }
}

struct TopButtonsView_Previews: PreviewProvider {
    @State static var colorMainValue: Color = colorMain.setMainColor()
    @State static var colorSubValue: Color = colorMain.setSubColor()
    static var previews: some View {
        TopButtonsView(colorMainValue: $colorMainValue, colorSubValue: $colorSubValue)
    }
}
