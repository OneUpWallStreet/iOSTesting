//
//  GridTest.swift
//  Test
//
//  Created by Arteezy on 3/28/22.
//

import SwiftUI

struct GridTest: View {
    
    var answers: Array<String> = ["Google Cloud Platform", "Amazon Web Services", "Microsoft Azure","Oracle Cloud", "IBM Cloud"]
    
    var body: some View {
        
        VStack{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))],spacing: 20){
                ForEach(answers,id: \.self) { value in
                    Text(value)
                }
            }
            
//            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))){
//                ForEach(answers,id: \.self) { value in
//                    Text(value)
//                }
//            }
        }
        .padding()

    }
}

struct GridTest_Previews: PreviewProvider {
    static var previews: some View {
        GridTest()
    }
}
