//
//  AbsolutePositionExampleView.swift
//  LayoutAndGeometry
//
//  Created by Dave Spina on 2/18/21.
//

import SwiftUI

struct AbsolutePositionExampleView: View {
    var body: some View {
        ZStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .background(Color.red)
                .position(x: 100, y: 100)
            // offset moves the text from the position it would display
            Text("Goodbye World!!")
                .offset(x: 50, y: 50)
                .background(Color.blue)
        }
    }
}

struct AbsolutePositionExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AbsolutePositionExampleView()
    }
}
