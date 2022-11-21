//
//  RecordingsList.swift
//  NC1 Voice memos SA
//
//  Created by Sabrina Accardo on 16/11/22.
//

import SwiftUI

struct RecordingsList: View {
    @ObservedObject var audioRecorder: AudioRecorder
    var body: some View {
        
        Form {
            ForEach (1..<6) { number in
                NavigationLink(destination: Voice_Memos(name: "Recording \(number)")){
                    Text ("Recording \(number)")
                   }
                
                } // end of ForEach
            } // end of Form
        
        
        }    
    }
    

struct RecordingsList_Previews: PreviewProvider {
    static var previews: some View {
        RecordingsList(audioRecorder: AudioRecorder())
    }
}
