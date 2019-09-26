//
//  ContentView.swift
//  SeparatingListINtoSections
//
//  Created by ramil on 26/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

let items:[String] = [
    "Profile",
    "Purchase History",
    "Wish list",
    "Change password",
    "Face ID",
    "Reset"
]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("General").padding([.top, .bottom])) {
                    ForEach(0..<3) { index in
                        Text(items[index])
                    }
                }
                
                Section(header: Text("Security").padding([.top, .bottom])) {
                    ForEach(3..<items.count) { index in
                        Text(items[index])
                    }
                }
            }.navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
