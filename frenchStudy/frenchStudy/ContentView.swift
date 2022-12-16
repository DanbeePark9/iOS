//
//  ContentView.swift
//  frenchStudy
//
//  Created by 박단비 on 2022/12/15.
//

import SwiftUI
import SwiftUIX

struct ContentView: View {
    @State var show = false
    @Namespace var namespace
    
    var body: some View {
        ZStack {
            if show == false {
                VStack (spacing: 16){
                    Text("Today")
                        .font(.largeTitle).bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                    VStack (spacing: 0){
                        Text("App of the day".uppercased()).font(.largeTitle).bold()
                            .matchedGeometryEffect(id: "title", in: namespace)
                            .frame(maxWidth: 150, maxHeight: .infinity, alignment:  .bottomLeading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding()
                        HStack {
                            Image(uiImage: #imageLiteral(resourceName: "logo"))
                                .frame(width:36, height:36)
                                .cornerRadius(10)
                            VStack(alignment: .leading, spacing: 4) {
                                Text("DesignCode")
                                    .font(.body).bold()
                                Text("Learn SwiftUI, React and UI Design")
                                    .font(.caption)
                            }
                            .foregroundColor(Color.white)
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding(12)
                        .background(
                            VisualEffectBlurView(blurStyle: .systemMaterialDark)
                        )
                    }
                    .frame(maxWidth: .infinity, maxHeight: 335)
                    .background(
                        Image(uiImage: #imageLiteral(resourceName: "image2"))
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .matchedGeometryEffect(id: "image", in: namespace)
                    )
                    //.cornerRadius(30)
                    .mask(
                        RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .matchedGeometryEffect(id: "shape", in: namespace)
                    )
                    .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
                    
                    Spacer()
                    
                }
                .padding(20)
            } else {
                DetailView(namespace: namespace)
            }
        }
        .animation(.spring())
        .onTapGesture {
            show.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
