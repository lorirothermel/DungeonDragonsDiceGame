//
//  ContentView.swift
//  DungeonDragonsDiceGame
//
//  Created by Lori Rothermel on 5/29/23.
//

import SwiftUI


struct ContentView: View {
    @State private var resultMessage = ""
    
    
    var body: some View {
               
            VStack {
                titleView
                Spacer()
                resultMessageView
                Spacer()
                ButtonLayout(resultMessage: $resultMessage)
            }  // VStack
            .padding()
        
    }  // some View
}  // ContentView


extension ContentView {
    private var titleView: some View {
        Text("Dungeon Dice")
            .font(.largeTitle)
            .fontWeight(.black)
            .foregroundColor(.red)
            .minimumScaleFactor(0.5)
            .lineLimit(1)
    }
    
    private var resultMessageView: some View {
        Text(resultMessage)
            .font(.largeTitle)
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .frame(height: 150)
    }
    

        
}  // extension





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

