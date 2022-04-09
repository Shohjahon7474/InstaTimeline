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
        VStack{
        Button(action: {
            UserDefaults.standard.removeObject(forKey: "userid")
            status.listen()
        }, label: {
            HStack{
                Spacer()
                Image(systemName: "house").foregroundColor(.white)
                Text("Logout").foregroundColor(.white)
                Spacer()
            }
        }).frame(height:45).background(.red).cornerRadius(20)
        }.padding()
        .navigationBarItems(leading: Image(systemName:"camera"), trailing:Image(systemName:"location"))
            .navigationBarTitle("Instagram")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct HomeScreen1_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen1()
    }
}
