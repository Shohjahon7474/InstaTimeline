//
//  StarterScreen.swift
//  SwiftUILogin
//
//  Created by Shohjahon Numonovich on 4/9/22.
//

import SwiftUI

struct StarterScreen: View {
    @EnvironmentObject var status: Status
    var body: some View {
        VStack{
            if self.status.userid != nil {
                HomeScreen1()
            }else{
                SinginPushing()
            }
        }.onAppear{
            status.listen()
            }
        }
        
        
    }


struct StarterScreen_Previews: PreviewProvider {
    static var previews: some View {
        StarterScreen()
    }
}
