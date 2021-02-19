//
//  GeoPlaygroundView.swift
//  LayoutAndGeometry
//
//  Created by Dave Spina on 2/18/21.
//

import SwiftUI

struct MyViewContainer: View {
    let title: String
    let rectangleColor: Color
    let rectangleAltColor: Color
    let numberOfRectangles: Int
    
    var body: some View {
        VStack {
            Text(self.title)
            GeometryReader { viewGeo in
                HStack {
                    ForEach(0..<numberOfRectangles) { index in
                        Rectangle()
                            .frame(width: viewGeo.frame(in: .local).width / CGFloat(self.numberOfRectangles))
                            .background(index % 2 == 0 ? self.rectangleColor : self.rectangleAltColor)
                    }
                }
            }
        }.frame(height: 300)
    }
}

struct GeoPlaygroundView: View {
    var body: some View {
            GeometryReader { geo in
                VStack {
                    Text("Top Outer")
                    .frame(width: geo.size.width * 0.9)
                    .background(Color.gray)
                MyViewContainer(title: "My Container", rectangleColor: Color.blue, rectangleAltColor: Color.green, numberOfRectangles: 3)
                Text("Bottom Outer")
                    .frame(width: geo.size.width * 0.9)
                    .background(Color.gray)
            }
        }
    }
}

struct GeoPlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        GeoPlaygroundView()
    }
}
