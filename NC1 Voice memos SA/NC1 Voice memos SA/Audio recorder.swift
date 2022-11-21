//
//  Audio recorder.swift
//  NC1 Voice memos SA
//
//  Created by Sabrina Accardo on 16/11/22.
//

import Foundation
import SwiftUI
import Combine
import AVFoundation
class AudioRecorder: ObservableObject {
    
    func startRecording() {
        let recordingSession = AVAudioSession.sharedInstance()
        do {
                    try recordingSession.setCategory(.playAndRecord, mode: .default)
                    try recordingSession.setActive(true)
                } catch {
                    print("Failed to set up recording session")
                }
        let documentPath = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let audioFilename = documentPath.appendingPathComponent("\(Date().toString(dateFormat: "dd-MM-YY_'at'_HH:mm:ss")).m4a")
        let settings = [
                    AVFormatIDKey: Int(kAudioFormatMPEG4AAC),
                    AVSampleRateKey: 12000,
                    AVNumberOfChannelsKey: 1,
                    AVEncoderAudioQualityKey: AVAudioQuality.high.rawValue
                ]
        do {
                    audioRecorder = try AVAudioRecorder(url: audioFilename, settings: settings)
                    audioRecorder.record()
                    recording = true
                } catch {
                    print("Could not start recording")
                    
                }
        }
    
    
    let objectWillChange = PassthroughSubject<AudioRecorder, Never>()
    var audioRecorder: AVAudioRecorder!
    var recording = false {
            didSet {
                objectWillChange.send(self)
            }
        }
    
    
    
    
}
