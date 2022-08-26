//
//  secondview.swift
//  Day 8
//
//  Created by Rasheed Abduljader on 20/08/2022.
//

import SwiftUI

struct secondview: View {
    let colors : Color
    let textt : String
    var body: some View {
        
        ZStack{
            colors.ignoresSafeArea()
            VStack{
                
             Text(textt)
                
                
            }
            
        }    }
}

struct secondview_Previews: PreviewProvider {
    static var previews: some View {
        secondview(colors: Color.indigo, textt: "Rash")
    }
}
