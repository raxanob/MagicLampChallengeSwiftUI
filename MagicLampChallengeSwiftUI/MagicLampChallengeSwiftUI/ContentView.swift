//
//  ContentView.swift
//  MagicLampChallengeSwiftUI
//
//  Created by Rayane Xavier on 30/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var on = false
    @State private var potency = 1.0
    
    var body: some View {
        VStack {
            Text("Lampâda Mágica")
                .font(.title)
                .bold()
                .padding()
            Image(systemName: "lightbulb")
                .font(.system(size: 200))
            HStack {
                Text ("Lampada: ")
                Toggle(on ? "desligar" : "ligar", isOn: $on)
            }
            HStack {
                Text ("Potência: ")
                Slider(value: on ?
                       $potency :
                        .constant(0))
                Text("\(on ? potency * 100 : 0.0, specifier: "%.0f")%")
            }
        }
        .padding()
        .frame(width: .infinity, height: .infinity)
        .background(
            on ?
            .yellow.opacity(potency) : .white
        )
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
