//
//  HelpModalView.swift
//  foodDice
//
//  Created by cnu on 2023/02/21.
//

import SwiftUI

struct HelpModalView: View {
    var body: some View {
        VStack {
            Text("roll it!을 눌러 메뉴를 골라봅시다")
                .foregroundColor(.orange)
            Text("표시된 메뉴를 눌러 근처 지도를 탐색해 봅시다")
                .foregroundColor(.orange)
        }
    }
}

struct HelpModalView_Previews: PreviewProvider {
    static var previews: some View {
        HelpModalView()
    }
}
