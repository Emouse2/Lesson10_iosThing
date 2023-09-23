//
//  screen2.swift
//  Lesson 6 challenge
//
//  Created by Emmaus Sim on 14/8/23.
//

import SwiftUI
import SwiftPersistence

struct screen2: View {
    
    @Persistent("number") var number = 1
    @Persistent("textThing") var textThing = "Description"
    @Persistent("isOn") var isOn = false
    
    var body: some View {
        VStack{
            List{
                Text("This is screen2")
                Stepper("Number: \(number)", value: $number)
                
                TextField("Type random stuff here: ", text: $textThing)
                    .foregroundColor(.gray)
                Toggle("Title in middle", isOn: $isOn)
            }
            Menu{
                Button{
                }label: {
                    Text("Delete")
                        .foregroundColor(.red)
                }
                Button{
                }label: {
                    Text("Cancel")
                }
            }label: {
                HStack{
                    Text("Delete")
                        .foregroundColor(.red)
                    Spacer()
                    Image(systemName: "trash")
                        .foregroundColor(.red)
                }
            }
            Text("\(number)")
        }
        .navigationTitle("Screen2")
        .navigationBarTitleDisplayMode(isOn ? .inline: .large)
                }
    }

struct screen2_Previews: PreviewProvider {
    static var previews: some View {
        screen2()
    }
}
