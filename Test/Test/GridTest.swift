//
//  GridTest.swift
//  Test
//
//  Created by Arteezy on 3/28/22.
//

import SwiftUI

extension Color {
    static let challangeBlue = Color("challangeBlue")
}

struct GridTest: View {
    
    var answers: Array<String> = ["Google Cloud Platform", "Amazon Web Services", "Microsoft Azure","Oracle Cloud", "IBM Cloud"]
    
    var body: some View {
        
        VStack{
            
            Spacer()
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color .challangeBlue)
                HStack{
                    Spacer()
                    Image("home-2")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                    
                    Spacer()
                    Text("Home")
                        .font(.title3)
                        .bold()
                        .padding(.trailing,30)
                        .foregroundColor(.white)
                    Spacer()
            }
                
            }
            .frame(width: 200, height: 70, alignment: .center)
            
        }

    }
}

struct GridTest_Previews: PreviewProvider {
    static var previews: some View {
        GridTest()
    }
}
