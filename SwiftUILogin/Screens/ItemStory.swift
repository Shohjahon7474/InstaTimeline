//
//  ItemStory.swift
//  SwiftUILogin
//
//  Created by Shohjahon Numonovich on 4/9/22.
//

import SwiftUI

struct ItemStory: View {
    var body: some View {
        VStack{
            Image("profile").resizable()
                .clipShape(Circle())
                .overlay(Circle().stroke(.red,lineWidth: 2))
                .frame(width: 70, height: 70)
               
                
                
            Text("shohjahon").font(Font.system(size: 13.5))
        }.padding(.trailing,10).frame(height:100)
    }
}

struct ItemStory_Previews: PreviewProvider {
    static var previews: some View {
        ItemStory()
    }
}
