//
//  SingupPushing.swift
//  SwiftUILogin
//
//  Created by Shohjahon Numonovich on 4/8/22.
//

import SwiftUI

struct SingupPushing: View {
    @Environment(\.presentationMode) var presentation
    @EnvironmentObject var status: Status

    
    @State var firstname = ""
    @State var lastname = ""
    @State var email = ""
    @State var adress = ""
    @State var password = ""
    
    var body: some View {
        VStack( spacing: 10){
            Spacer()
            
            TextField("Firstname",text:$firstname)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            TextField("Lastname",text:$lastname)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            SecureField("Email",text:$email)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            SecureField("Adress",text:$adress)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            SecureField("Password",text:$password)
                .frame(height:45).padding(.leading,10)
                .background(Color.gray.opacity(0.2)).cornerRadius(20)
            
            Button(action: {
                UserDefaults.standard.set("pdp",forKey: "userid")
                status.listen()
            }, label: {
                HStack{
                    Spacer()
                    Text("Sing Up").foregroundColor(.white)
                    Spacer()
                }
            }).frame(height:45)
                .background(Color.red).cornerRadius(20)
            Spacer()
            HStack{
                Text("Already have an account?").foregroundColor(.blue)
                
                Button("Sing In"){
                    presentation.wrappedValue.dismiss()
                }.font(.system(size: 18)).foregroundColor(.blue)
                    
             }
        }.padding()
    }
}


struct SingupPushing_Previews: PreviewProvider {
    static var previews: some View {
        SingupPushing()
    }
}
