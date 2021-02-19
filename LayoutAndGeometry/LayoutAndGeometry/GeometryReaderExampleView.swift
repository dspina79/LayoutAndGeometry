//
//  GeometryReaderExampleView.swift
//  LayoutAndGeometry
//
//  Created by Dave Spina on 2/18/21.
//


// Some rules
// 1. If you want to know where the view is relative to the screen, use the GLOBAL space.
// 2. If you want to know where the view is relative to its parent, use the LOCAL space.
// 3. If you want to know where the view is relative to another container, use a CUSTOM space from the container's cooridinate system name.


import SwiftUI

struct OuterView: View {
    var body: some View {
        VStack {
            Text("Top")
            InnerView()
                .background(Color.green)
            Text("Bottom")
        }
    }
}

struct InnerView: View {
    var body: some View {
        HStack {
            Text("Left")
            GeometryReader { geo in
                Text("Middle")
                    .background(Color.blue)
                    .onTapGesture {
                        print("Global Center: \(geo.frame(in: .global).midX) x \(geo.frame(in: .global).midY)")
                        print("Custom Center: \(geo.frame(in: .named("Custom")).midX) x \(geo.frame(in: .named("Custom")).midY)")
                        print("Local Center: \(geo.frame(in: .local).midX) x \(geo.frame(in: .local).midY)")
                    }
            }
            .background(Color.orange)
            Text("Right")
        }
    }
}

struct GeometryReaderExampleView: View {
    var body: some View {
        OuterView()
            .background(Color.gray)
            .coordinateSpace(name: "Custom")
    }
}

struct GeometryReaderExampleView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderExampleView()
    }
}
