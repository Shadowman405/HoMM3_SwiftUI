//
//  HeroesList.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 29.08.22.
//

import SwiftUI

struct HeroesList: View {
    
    
    var body: some View {
        ScrollView{
            List{
                HStack{
                    Image("Hero_Christian")
                }
            }
        }
    }
}

struct HeroesList_Previews: PreviewProvider {
    static var previews: some View {
        HeroesList()
    }
}
