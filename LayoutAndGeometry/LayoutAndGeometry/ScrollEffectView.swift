//
//  ScrollEffectView.swift
//  LayoutAndGeometry
//
//  Created by Dave Spina on 2/18/21.
//

import SwiftUI

struct ScrollEffectView: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]
    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { geo in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(width: fullView.size.width)
                            .background(self.colors[index % 7])
                            .rotation3DEffect(
                                .degrees(Double(geo.frame(in: .global).minY - fullView.size.width / 2) / 5),
                                axis: /*@START_MENU_TOKEN@*/(x: 0.0, y: 1.0, z: 0.0)/*@END_MENU_TOKEN@*/
                            )
                    }
                    .frame(height: 40)
                }
            }
        }
    }
}

struct ScrollEffectView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollEffectView()
    }
}
