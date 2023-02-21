//
//  AllMenu.swift
//  foodDice
//
//  Created by yook on 2023/02/20.
//

import SwiftUI

var menuArr = ["라면", "삼겹살", "치킨", "쌀국수",
               "돈까스", "짜장면", "족발", "떡볶이",
               "초밥", "김밥", "햄버거", "짬뽕",
               "소고기", "반미", "만두", "냉면",
               "제육볶음", "칼국수", "타코", "해장국",
               "수제비", "생선구이", "라멘", "서브웨이",
               "쭈꾸미볶음", "편의점", "밥버거", "갈비탕",
               "우동", "순대국", "불고기", "낙지볶음",
               "순두부", "카레", "한솥", "김피탕"]

let initMenuArr = ["라면", "삼겹살", "치킨", "쌀국수",
                     "돈까스", "짜장면", "족발", "떡볶이",
                     "초밥", "김밥", "햄버거", "짬뽕",
                     "소고기", "반미", "만두", "냉면",
                     "제육볶음", "칼국수", "타코", "해장국",
                     "수제비", "생선구이", "라멘", "서브웨이",
                     "쭈꾸미볶음", "편의점", "밥버거", "갈비탕",
                     "우동", "순대국", "불고기", "낙지볶음",
                     "순두부", "카레", "한솥", "김피탕"]



//class MenuData:Codable {
//
//    //var category:AccountCategory = .none
//    //var title: String = ""
//    //var account:String = "0"
//    //var date:Date = Date()
//
//
//    init() {}
//
//}
//
//
//
//class MenuListDataManager: ObservableObject {
//    static let MENUDATALISTKEY = "menu_data_list_key"
//    static let shared = MenuListDataManager()
//
//
//    @State var defultMenuArr = ["라면", "삼겹살", "치킨", "쌀국수",
//                         "돈까스", "짜장면", "족발", "떡볶이",
//                         "초밥", "김밥", "햄버거", "짬뽕",
//                         "소고기", "반미", "만두", "냉면",
//                         "제육볶음", "칼국수", "타코", "해장국",
//                         "수제비", "생선구이", "라멘", "서브웨이",
//                         "쭈꾸미볶음", "편의점", "밥버거", "갈비탕",
//                         "우동", "순대국", "불고기", "낙지볶음",
//                         "순두부", "카레", "한솥", "김피탕"]
//
//
//    @Published var dataList: Array = []
//    @Published var keyDate = ""
//    var strKeyDate: String {
//        get {
//            keyDate
//        }
//        set(newKeyDate) {
//            if keyDate == newKeyDate {
//                keyDate = ""
//                return
//            }
//
//            keyDate = newKeyDate
//        }
//    }
////    init() {
////        if let data = UserDefaults.standard.value(forKey: MenuListDataManager.MENU_DATA_LIST_KEY) as? Data {
////            let originlist = try? PropertyListDecoder().decode([MenuData].self, from: data)
////            if let list = originlist {
////                dataList = list
////            }
////        }
////    }
//
//
//    func add(MenuData newData: String) -> Bool {
//        defultMenuArr.append(newData)
//            UserDefaults.standard.set(try? PropertyListEncoder().encode(defultMenuArr),
//                                      forKey: MenuListDataManager.MENUDATALISTKEY)
//            return UserDefaults.standard.synchronize()
//    }
//
//    init(defultMenuArr: [String] = ["라면", "삼겹살", "치킨", "쌀국수",
//                                    "돈까스", "짜장면", "족발", "떡볶이",
//                                    "초밥", "김밥", "햄버거", "짬뽕",
//                                    "소고기", "반미", "만두", "냉면",
//                                    "제육볶음", "칼국수", "타코", "해장국",
//                                    "수제비", "생선구이", "라멘", "서브웨이",
//                                    "쭈꾸미볶음", "편의점", "밥버거", "갈비탕",
//                                    "우동", "순대국", "불고기", "낙지볶음",
//                                    "순두부", "카레", "한솥", "김피탕"], dataList: Array<Any> = [], keyDate: String = "") {
//        self.defultMenuArr = defultMenuArr
//        self.dataList = dataList
//        self.keyDate = keyDate
//    }
//}
