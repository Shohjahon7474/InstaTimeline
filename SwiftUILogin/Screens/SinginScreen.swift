//
//  SinginScreen.swift
//  SwiftUILogin
//
//  Created by Shohjahon Numonovich on 4/8/22.
//

import SwiftUI

struct SinginScreen: View {
    
    @State var isModal:Bool = false
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        
        VStack( spacing: 10){
            Spacer()
            Image("man").resizable()
                .frame(width: 100, height: 100).cornerRadius(60)
            
            TextField("User ID",text:$email)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            SecureField("User PW",text:$password)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            Button(action: {
                UserDefaults.standard.set(true,forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("status"), object: nil)
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
                
                Button("Sing Up"){
                    self.isModal = true
                }.sheet(isPresented: $isModal, content:{ SingupScreen()
                }).font(.system(size: 18)).foregroundColor(.blue)
                    
             }
        }.padding()
        
    }
}

struct SinginScreen_Previews: PreviewProvider {
    static var previews: some View {
        SinginScreen()
    }
}
