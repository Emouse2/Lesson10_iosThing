//
//  ContentView.swift
//  Lesson 6 challenge
//
//  Created by Emmaus Sim on 14/8/23.
//

import SwiftUI
import SwiftPersistence

struct ContentView: View {
    
    @Persistent("sheetShown") var sheetShown = false
    
    var body: some View {
        NavigationStack{
            VStack {
                List{
                    NavigationLink{
                        screen2()
                    } label: {
                        Text("Open screen2 (detail view)")
                    }
                    Button{
                        sheetShown.toggle()
                    }label: {
                        Text("Create new number")
                    }
                }
            }
            .sheet(isPresented: $sheetShown) {
                screen3()
            }
            .navigationTitle("ContentView")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(" ") {
                    }
                }
            }
        }
    }
}
    
            
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
