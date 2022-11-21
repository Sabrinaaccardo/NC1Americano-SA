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
                
                 RecordingsList(audioRecorder: audioRecorder)
                
                 Spacer() //tiene il record button giù
                
                if audioRecorder.recording == false {
                    Button(action: {self.audioRecorder.startRecording()})
                    {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 70, height: 70)
                            .clipped()
                            .foregroundColor(.red)
                            .overlay {
                                Circle().stroke(.gray, lineWidth: 4)
                            }
                       }
                  } else {
                    Button(action: {self.audioRecorder.stopRecording()})
                      {
                        Image(systemName: "stop.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 70, height: 70)
                            .clipped()
                            .foregroundColor(.red)
                            .overlay {
                                Circle().stroke(.gray, lineWidth: 4)
                            }
                          }
                        }
             }//end of VStack
            
            
            .navigationTitle ("All recordings")
               .navigationBarItems(
                trailing:
                    HStack {
                        EditButton() } // end of Hstack
                
               ) // closes navigationBarItems
            
       } // end of NavigationView
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(audioRecorder: AudioRecorder())
        
    }
}

