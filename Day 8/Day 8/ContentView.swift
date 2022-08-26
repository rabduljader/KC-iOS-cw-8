//
//  ContentView.swift
//  Day 8
//
//  Created by Rasheed Abduljader on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var textt = ""
    @State var choosenColor = Color.black
    
    let colors =
    
    [Color.black.opacity(0.7),
    Color.gray.opacity(0.7),
    Color.blue.opacity(0.7),
    Color.green.opacity(0.7)]

    var body: some View {
        NavigationView{
            
           ZStack{
                Color.mint.opacity(0.4)
                    .ignoresSafeArea()
                
                VStack{
                    
                    Text("اختار لونك المفضل 🖍 ")
                        .font(.system(size: 30))
                  
                    HStack{
                        
                        
                        ForEach(colors, id:\.self){
                        color in
    
                            Circle()
                                 .fill(color)
                                 .frame(width: 55, height: 55)
                            
                                 .onTapGesture {
                                     choosenColor = color
                                 }
                        
                        
    }.padding()
    Spacer()
            }

Text("ماذا تريد ان تكتب؟")
                    
TextField("اكتب", text: $textt)
.textFieldStyle(.roundedBorder)
.padding()
NavigationLink(destination: secondview(colors: choosenColor, textt: textt), label:
                {
    Text("save")
        .foregroundColor(.white)
        .font(.system(size: 22))
        .frame(width: 160, height: 40)
        .background(.indigo.opacity(0.6))
        .cornerRadius(15)
        
    

})

                                            
            }
                .navigationTitle("دفتر اليوميات 📒 ")
                        
                    
                
                }
                
            }
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
