//
//  ContentView.swift
//  GpsBaroDemoApp
//
//  Created by Rithik Pranao on 04/10/24.
//

import SwiftUI
import GPSBaroDemoSDK

struct ContentView: View {
    @State private var showGPSBaro = false

    var body: some View {
        Button(action: connectSdk) {
            Text("Show SDK UI")
                .foregroundColor(.white)
                .font(.headline)
                .padding()
                .frame(minWidth: 150)
                .background(Color.blue)
                .cornerRadius(8)
        }
        .sheet(isPresented: $showGPSBaro) {
            GPSAndBaroView(){
                showGPSBaro = false
            }
        }
    }
    
    private func connectSdk() {
        showGPSBaro = true
    }
}

#Preview {
    ContentView()
}
