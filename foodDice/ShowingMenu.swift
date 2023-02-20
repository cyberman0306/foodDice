//
//  ShowingMenu.swift
//  foodDice
//
//  Created by yook on 2023/02/20.
//

import SwiftUI


struct ShowingMenu: View {
    var body: some View {
        Text(menuArr.randomElement()!)
    }
}

struct ShowingMenu_Previews: PreviewProvider {
    static var previews: some View {
        ShowingMenu()
    }
}
