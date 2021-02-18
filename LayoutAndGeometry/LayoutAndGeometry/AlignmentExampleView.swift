//
//  AlignmentExampleView.swift
//  LayoutAndGeometry
//
//  Created by Dave Spina on 2/17/21.
//

import SwiftUI

struct AlignmentExampleView: View {
    var body: some View {
        VStack {
            Text("Resistance is futile")
                .frame(width: 300, height: 300, alignment: .topLeading)
            // alignment with lastTextBaseline will  ensure the text is aligned
            // on the baseline of the last text element left to right
            HStack(alignment: .lastTextBaseline) {
                Text("Live")
                Text("long")
                    .font(.subheadline)
                Text("and")
                    .font(.title)
                Text("prosper")
                    .font(.largeTitle)
            }
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        }
    }
}

struct AlignmentExampleView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmentExampleView()
    }
}
