//
//  ContentView.swift
//  NC1 Voice memos SA
//
//  Created by Sabrina Accardo on 16/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Spacer()
                
                if audioRecorder.recording == false {
                    Button(action: {print("Start recording")}) {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipped()
                            .foregroundColor(.red)
                            .padding(.bottom, 40)
                    }
                } else {
                    Button(action: {print("Stop recording)")}) {
                        Image(systemName: "stop.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .clipped()
                            .foregroundColor(.red)
                            .padding(.bottom, 40)
                    }
                }
                
                
                
            } //end of VStack
            
            
            .navigationTitle("All Recordings")
            
        } // end of NavigationView
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(audioRecorder: AudioRecorder())
        
    }
}
