//
//  Login.swift
//  Banco de Alimentos
//
//  Created by Diego Mojarro on 01/09/21.
//

import SwiftUI

struct Login: View{
    @State var mail = ""
    @State var password = ""
    var body: some View{
        ZStack{
            Color("background").edgesIgnoringSafeArea(.bottom)
            ScrollView{
                ZStack(alignment: .leading) {
                    Rectangle()
                        .foregroundColor(Color("squareColors"))
                        .cornerRadius(radius: 60.0, corners: [.bottomRight])
                    
                    VStack(alignment : .leading) {
                        Text("Inicia sesión")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading, 40)
                            .padding(.bottom, 20)
                    }
                }.padding(.bottom, 20)
                VStack{
                        Text("Email:")
                            .font(.subheadline)
                            .fontWeight(.light)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        TextField("", text: $mail)
                            .padding()
                            .background(Color("squareColors"))
                            .cornerRadius(20)
                            .shadow(color: .black, radius: 0.4, y: 0.2)
                    
                        
                        Text("Contraseña:")
                            .font(.subheadline)
                            .fontWeight(.light)
                            .padding(.top)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        SecureField("", text: $password)
                            .padding()
                            .background(Color("squareColors"))
                            .cornerRadius(20)
                            .shadow(color: .black, radius: 0.4, y: 0.2)
                        NavigationLink(
                            destination: ForgotPassword(),
                            label: {
                                Text("¿Olvidaste tu contraseña?")
                                    .font(.caption)
                                    .underline()
                                    .foregroundColor(.gray)
                                    .padding(.bottom,20)
//                                    .frame(maxWidth: .infinity, alignment: .trailing)

                            })
                        Button(action: {}, label: {
                            Text("Iniciar sesión")
                                .foregroundColor(.white)
                                .bold()
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color("greenBackground"))
                                .cornerRadius(20)
                            
                        })
                        
                        Text("o")
                            .frame(maxWidth: .infinity)
                        
                    Button(action: {}, label: {
                        HStack {
                            Image("facebookLogo")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 20, height: 20)
                            Text("Continuar con Facebook")
                                .foregroundColor(.white)
                                .bold()
                                .font(.headline)
                                
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(20)
                        .frame(maxWidth: .infinity)


                        
                    })
                        
                        
                        
                        Divider().frame(height: 0.3).background(Color("greenBackground")).padding(.horizontal, 60).padding(.vertical, 10)
                    NavigationLink(
                        destination: Register(),
                        label: {
                            Text("Registrate")
                                .foregroundColor(.white)
                                .bold()
                                .font(.headline)
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color(.black))
                                .cornerRadius(20)

                        })
                        
                    
                        
                    }.padding(.horizontal, 40)
                    
                
                
            }
            
        }.navigationTitle("Bienvenido")
    }
    
}


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
