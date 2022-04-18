//
//  GridTest.swift
//  Test
//
//  Created by Arteezy on 3/28/22.
//

import SwiftUI

extension Color {
    static let challangeBlue = Color("challangeBlue")
    static let sharkPurple = Color("sharkPurple")
}

struct GridTest: View {
    
    var answers: Array<String> = ["Google Cloud Platform", "Amazon Web Services", "Microsoft Azure","Oracle Cloud", "IBM Cloud"]
    
    @State var text: String = ""
    
    var body: some View {
        
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color .challangeBlue)
                VStack(alignment: .leading){
                    HStack{
                        Text("So, What Should Call You?")
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                            .fixedSize(horizontal: false, vertical: true)


                        
                        Spacer()
                        
                        ZStack{
                            Circle()
                                .fill(Color .white)
                                .frame(width: 55, height: 55, alignment: .center)
                            Image("whale")
                                .resizable()
                                .frame(width: 40, height: 40, alignment: .center)

                        }
                        
                    }
                    .padding()

                    TextField("", text: $text)
                        .placeholder(when: text.isEmpty, placeholder: {
                            Text("Enter Username").foregroundColor(.gray)
                        })
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color .white))
                        .foregroundColor(Color .black)
                        .padding()
                    
                    HStack{
                        Spacer()
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color .sharkPurple)
                            HStack{
                                Spacer()
                                Image("whaleFin")
                                    .resizable()
                                    .frame(width: 40, height: 40, alignment: .center)
                                
                                Spacer()
                                Text("Save")
                                    .font(.title3)
                                    .bold()
                                    .padding(.trailing,30)
                                    .foregroundColor(.challangeBlue)
                                Spacer()
                        }
                            
                        }
                        .frame(width: 200, height: 60, alignment: .center)
                        
                        Spacer()
                    }
                    

                    
                    Spacer()
                    
                    HStack{
                        Spacer()
                        Text("I don't know, make up a name")
                            .padding()
                        Spacer()
                    }
                    .foregroundColor(.white)


                    
        }
            }
            .frame(width: UIScreen.main.bounds.width-30, height: 300, alignment: .center)
            }
    }


struct GridTest_Previews: PreviewProvider {
    static var previews: some View {
        GridTest()
    }
}
