//
//  SinginPushing.swift
//  SwiftUILogin
//
//  Created by Shohjahon Numonovich on 4/8/22.
//

import SwiftUI

struct SinginPushing: View {
    @EnvironmentObject var status: Status
    @State var isModal:Bool = false
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
        VStack( spacing: 10){
            Spacer()
            Image("profile").resizable()
                .frame(width: 100, height: 100).cornerRadius(60)
            
            TextField("User ID",text:$email)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            SecureField("User PW",text:$password)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            Button(action: {
                UserDefaults.standard.set("pdp",forKey: "userid")
                status.listen()
            }, label: {
                HStack{
                    Spacer()
                    Text("Sing In").foregroundColor(.white)
                    Spacer()
                }
            }).frame(height:45)
                .background(Color.red).cornerRadius(20)
            Spacer()
            HStack{
                Text("Don't have an account?").foregroundColor(.blue)
                
                    NavigationLink(destination: SingupPushing(),label: {
                        Text("Sing Up")
                    }).font(.system(size: 18)).foregroundColor(.blue)
            }
        }.padding()
                .navigationBarTitle("Topuz")
                .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    
}
                                   


struct SinginPushing_Previews: PreviewProvider {
    static var previews: some View {
        SinginPushing()
    }
}
