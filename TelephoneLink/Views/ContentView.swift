//
//  ContentView.swift
//  TelephoneLink
//
//  Created by Russell Gordon on 2021-10-25.
//

import SwiftUI

struct ContentView: View {
    let schoolPhoneNumber = "Call LCS: [click here](tel:705-652-3324)"
    
    var body: some View {
        VStack {
            Text("This is regular text.")
            Text("* This is **bold** text, this is *italic* text, and this is ***bold, italic*** text.")
            Text("~~A strikethrough example~~")
            Text("`Monospaced works too`")
            Text("Visit Apple: [click here](https://apple.com)")
            Text("Call LCS: [click here](tel:705-652-3324)")
            Text(makeAttributedString(with: schoolPhoneNumber))
            Text(makeAttributedString(with: Numbers.exampleData.phoneNumber))
        }
    }
    
    func makeAttributedString(with givenText: String) -> AttributedString {
        return (try? AttributedString(markdown: givenText)) ?? AttributedString()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
