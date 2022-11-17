//
//  prova.swift
//  NC1 Voice memos SA
//
//  Created by Sabrina Accardo on 17/11/22.
//

import SwiftUI
//da qui pagina che si apre
struct change: View {
    @State private var sciao = ""
    @FocusState private var nameIsFocused: Bool
    let na: String
    @State var text: String = UserDefaults.standard.string(forKey: "TEXT_KEY") ?? ""
    @State var inputText: String = ""

    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Change your Nickname")){
                    TextField(text, text: $sciao)
                }
                Section {
                    Button("Save"){
                            UserDefaults.standard.set(inputText, forKey: "TEXT_KEY")
                            text = inputText


                    }
                }
            }
        }
    }
}

#if canImport(UIKit)
extension View {
    func hideKey() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif
//qui finisce seconda pagina
//qui inizia schermata impostazioni
struct prova: View {
    @State var showModal: Bool = false
    @State private var BackGroundSound = true
    @State var showingAlert : Bool = false
    let players = ["Nickname",]
    @State var text: String = UserDefaults.standard.string(forKey: "TEXT_KEY") ?? ""
var body: some View {
        //DA QUI
        NavigationView {
            List(players, id: .self) { player in
                NavigationLink(destination: change(na: player)) {
                    Text(player)
                        .badge(text)
                }
                //inserire qui sotto
                Toggle("Background Sound", isOn: $BackGroundSound).toggleStyle(SwitchToggleStyle(tint: .green))
                Button ("Reset") {
                    showingAlert = true
                }
                .alert(isPresented: $showingAlert) {
                    Alert(
                        title: Text("Are you sure that you want to start again?"),
                        message: Text("You are going to start you story from the begging and lose track of all of your progresses"),
                        primaryButton:
                                .destructive(Text("Reset")
                            .bold()),
                        secondaryButton: .cancel())
                }
               

            }.navigationTitle("Settings")


            }
            //fino A QUI
        }
    }


//qui finsice schermata impostazioni
struct prova_Previews: PreviewProvider {
    static var previews: some View {
        prova()
    }
}
