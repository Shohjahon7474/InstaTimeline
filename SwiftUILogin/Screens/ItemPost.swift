//
//  ItemPost.swift
//  SwiftUILogin
//
//  Created by Shohjahon Numonovich on 4/9/22.
//

import SwiftUI

struct ItemPost: View {
    var img_url1 = "image5"
    var img_url2 = "image3"
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Image("profile").resizable().frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(.red,lineWidth: 2))
                    .frame(width: 50, height: 50)
                HStack{
                    Text("shohjahon").font(Font.system(size: 14)).fontWeight(.bold)
                    Image("ic_dot").frame(width: 2, height: 1).padding(.trailing,2)
                    Text("follow").font(Font.system(size: 14)).fontWeight(.bold)
                        .foregroundColor(.blue)
                    Spacer()
                    Image(systemName: "location")
                    
                }
            }.padding(.top,5)
            HStack{
                Image(img_url1)
                    .resizable()
                    //.scaledToFit()
                    .padding(.leading,-20)
                    .frame(maxHeight:200)
                Spacer(minLength: 5)
                Image(img_url2)
                    .resizable()
                    //.scaledToFit()
                    .padding(.trailing,-20)
                    .frame(maxHeight:200)
                   

            }
                
            HStack(alignment:.center){
                Image("ic_like")
                Image("ic_comment")
                Image("ic_send")
                Spacer()
                Image("ic_bookmark")
            }
            
            Text("Liked by Cristiano and 1023").font(Font.system(size: 13.5))
            Text("Shoxruh juda chiroyli rasm ekan ")
                .lineLimit(4)
                .font(Font.system(size: 13.5))
                .foregroundColor(.init(white: 0.2))
        }
    }
}

struct ItemPost_Previews: PreviewProvider {
    static var previews: some View {
        ItemPost()
    }
}
