//
//  Voice Memos.swift
//  NC1 Voice memos SA
//
//  Created by Sabrina Accardo on 16/11/22.
//

import SwiftUI

struct Voice_Memos: View {
    var body: some View {
        VStack {

            Text("Voice Memos")
                .font(.largeTitle)
            .fontWeight(.bold)
                
            .padding () //spazio tra il bezel e il title
            Spacer() //mette il title sopra
            HStack {
                Text ("RecordingsList")
            }
            Spacer()
        } //end of VStack
        
        
        }
    }

struct Voice_Memos_Previews: PreviewProvider {
    static var previews: some View {
        Voice_Memos()
    }
}
