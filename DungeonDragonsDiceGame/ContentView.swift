//
//  ContentView.swift
//  DungeonDragonsDiceGame
//
//  Created by Lori Rothermel on 5/29/23.
//

import SwiftUI


struct ContentView: View {
    
    enum Dice: Int {
        case four = 4
        case six = 6
        case eight = 8
        case ten = 10
        case twelve = 12
        case twenty = 20
        case hundred = 100
        
        func roll() -> Int {
            return Int.random(in: 1...self.rawValue)
        }
    }
    
    @State private var resultMessage = ""
    
    
    var body: some View {
        VStack {
                      
            Text("Dungeon Dice")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.red)
            
            Spacer()
            
            Text(resultMessage)
                .font(.largeTitle)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .frame(height: 150)
                .padding()
            
            Spacer()
            
            Group {
                HStack {
                    Button("\(Dice.four.rawValue)-sided") {
                        resultMessage = "You rolled a \(Dice.four.roll()) on a \(Dice.four.rawValue)-sided dice."
                    }  // Button - 4 sided
                    Spacer()
                    Button("\(Dice.six.rawValue)-sided") {
                        resultMessage = "You rolled a \(Dice.six.roll()) on a \(Dice.six.rawValue)-sided dice."
                    }  // Button - 6 sided
                    Spacer()
                    Button("\(Dice.eight.rawValue)-sided") {
                        resultMessage = "You rolled a \(Dice.eight.roll()) on a \(Dice.eight.rawValue)-sided dice."
                    }  // Button - 8 sided
                }  // HStack
                
                HStack {
                    Button("\(Dice.ten.rawValue)-sided") {
                        resultMessage = "You rolled a \(Dice.ten.roll()) on a \(Dice.ten.rawValue)-sided dice."
                    }  // Button - 10 sided
                    Spacer()
                    Button("\(Dice.twelve.rawValue)-sided") {
                        resultMessage = "You rolled a \(Dice.twelve.roll()) on a \(Dice.twelve.rawValue)-sided dice."
                    }  // Button - 12 sided
                    Spacer()
                    Button("\(Dice.twenty.rawValue)-sided") {
                        resultMessage = "You rolled a \(Dice.twenty.roll()) on a \(Dice.twenty.rawValue)-sided dice."
                    }  // Button - 20 sided
                }  // HStack
                
                Button("\(Dice.hundred.rawValue)-sided") {
                    resultMessage = "You rolled a \(Dice.hundred.roll()) on a \(Dice.hundred.rawValue)-sided dice."
                }  // Button - 100 sided
            }  // Group
            .buttonStyle(.borderedProminent)
            .tint(.red)
            

            
        }  // VStack
        .padding()
                
    }  // some View
}  // ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
