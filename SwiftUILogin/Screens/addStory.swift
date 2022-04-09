//
//  addStory.swift
//  SwiftUILogin
//
//  Created by Shohjahon Numonovich on 4/9/22.
//

import SwiftUI

struct addStory: View {
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing){
            Image("profile").resizable().frame(width: 70, height: 70)
                .cornerRadius(35)
                
                Image("ic_add").resizable().frame(width: 24, height: 24).background(.blue).cornerRadius(12)
                
            }
                
                
            Text("shohjahon").font(Font.system(size: 13.5))
        }.padding(.trailing,10).frame(height:100)
    }
}

struct addStory_Previews: PreviewProvider {
    static var previews: some View {
        addStory()
    }
}
