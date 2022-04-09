//
//  HomeScreen1.swift
//  SwiftUILogin
//
//  Created by Shohjahon Numonovich on 4/9/22.
//

import SwiftUI

struct HomeScreen1: View {
    @EnvironmentObject var status: Status
    var body: some View {
        NavigationView{
            List{
                ScrollView(.horizontal,showsIndicators: false){
                    HStack{
                        addStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                        ItemStory()
                    }
                }.frame(height:100,alignment: .topLeading)
                ItemPost(img_url1: "image1", img_url2: "image3")
                ItemPost(img_url1: "image2", img_url2: "image4")
                ItemPost(img_url1: "image5", img_url2: "image5")
            }.listStyle(PlainListStyle())
            .navigationBarItems(leading: Image(systemName:"camera"), trailing:
                    Button(action: {
                        UserDefaults.standard.removeObject(forKey: "userid")
                        status.listen()
                        
                    }, label: {
                        Image(systemName:"video")
                    })
                )
            .navigationBarTitle("Topuz")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomeScreen1_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen1()
    }
}
