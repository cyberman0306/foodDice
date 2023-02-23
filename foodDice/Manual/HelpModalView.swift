//
//  HelpModalView.swift
//  foodDice
//
//  Created by cnu on 2023/02/21.
//

import SwiftUI

struct HelpModalView: View {
    @Binding var colorMainValue: Color
    @Binding var colorSubValue: Color
    var body: some View {
        VStack {
            Text("roll it!을 눌러 메뉴를 골라봅시다")
                .foregroundColor(colorMainValue)
            Text("표시된 메뉴를 눌러 근처 지도를 탐색해 봅시다")
                .foregroundColor(colorMainValue)
        }
    }
}

struct HelpModalView_Previews: PreviewProvider {
    @State static var colorMainValue: Color = colorMain.setMainColor()
    @State static var colorSubValue: Color = colorMain.setSubColor()
    static var previews: some View {
        HelpModalView(colorMainValue: $colorMainValue, colorSubValue: $colorSubValue)
    }
}
