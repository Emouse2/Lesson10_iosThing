//
//  screen3.swift
//  Lesson 6 challenge
//
//  Created by Emmaus Sim on 15/8/23.
//

import SwiftUI
import SwiftPersistence

struct screen3: View {
    
    @Persistent("number2") var number2 = 1
    @Persistent("textFiel") var textFiel = "Description"
    
    var body: some View {
        VStack{
            Text("Create a new thing here")
                .padding()
            List{
                Text("Create a new thing here")
                Stepper("Number: \(number2)", value: $number2)
                TextField("hi", text: $textFiel)
                Spacer()
                Button("Create new number"){
                }
            }
        }
    }
}

struct NewView: View {
    var body: some View {
        Text("This is the new view")
    }
}


struct screen3_Previews: PreviewProvider {
    static var previews: some View {
        screen3()
    }
}
