//
//  Recording1View.swift
//  NC1 Voice memos SA
//
//  Created by Sabrina Accardo on 17/11/22.
//

import SwiftUI



struct Voice_Memos: View {
    @State var name : String
    var body: some View {
        VStack {

            Text(name)
                .font(.largeTitle)
            .fontWeight(.bold)
            
           
                
            .padding () //spazio tra il bezel e il title
           
            Spacer()
            HStack{
                Spacer()
                Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
                Spacer()
      } // end of HStack
            
            Spacer() //mette il title sopra
            
            
                
            }//end of VStack
        }
        
        
        }

struct Voice_Memos_Previews: PreviewProvider {
    static var previews: some View {
        Voice_Memos(name: "Recording 1")
    }
}
