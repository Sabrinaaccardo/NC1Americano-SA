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

        List {
            NavigationLink(destination: Voice_Memos(nome: "Recording 1")){
                
                Text ("Recording 1")
            }
            NavigationLink(destination: Voice_Memos(nome: "Recording 2")){
                
                Text ("Recording 2")
            }
            NavigationLink(destination: Voice_Memos(nome: "Recording 3")){
                
                Text ("Recording 3")
            }
            NavigationLink(destination: Voice_Memos(nome: "Recording 4")){
                
                Text ("Recording 4")
            }
            NavigationLink(destination: Voice_Memos(nome: "Recording 5")){
                
                Text ("Recording 5")
            }
            NavigationLink(destination: Voice_Memos(nome: "Recording 6")){
                
                Text ("Recording 6")
            }
            NavigationLink(destination: Voice_Memos(nome: "Recording 7")){
                
                Text ("Recording 7")
            }
            NavigationLink(destination: Voice_Memos(nome: "Recording 8")){
                
                Text ("Recording 8")
            }
            NavigationLink(destination: Voice_Memos(nome: "Recording 9")){
                
                Text ("Recording 9")
            }
            NavigationLink(destination: Voice_Memos(nome: "Recording 10")){
                
                Text ("Recording 10")
            }
        
            
        }
    }
    
}



struct RecordingsList_Previews: PreviewProvider {
    static var previews: some View {
        RecordingsList(audioRecorder: AudioRecorder())
    }
}
