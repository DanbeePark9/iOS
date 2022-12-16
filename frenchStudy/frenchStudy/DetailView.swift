//
//  DetailView.swift
//  frenchStudy
//
//  Created by 박단비 on 2022/12/16.
//

import SwiftUI
import SwiftUIX

struct DetailView: View {
    var namespace: Namespace.ID
    
    var body: some View {
        VStack (spacing: 16){
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
                    //Color.black.opacity(0.8)
                    VisualEffectBlurView(blurStyle: .systemMaterialDark)
                )
                
            }
            .frame(maxWidth: .infinity, maxHeight: 500)
            .background(
                Image(uiImage: #imageLiteral(resourceName: "image2"))
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .matchedGeometryEffect(id: "image", in: namespace)
            )
            //.cornerRadius(30)
            .clipShape(RoundedRectangle(cornerRadius: 0, style: .continuous))
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 10)
            
            Spacer()
            
        }
        .ignoresSafeArea()
    }
}

struct DetailView_Previews: PreviewProvider {
    @Namespace static var namespace
    
    static var previews: some View {
        DetailView(namespace: namespace)
    }
}
