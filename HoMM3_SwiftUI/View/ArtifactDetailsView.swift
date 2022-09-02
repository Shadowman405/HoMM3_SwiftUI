//
//  ArtifactDetailsView.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 2.09.22.
//

import SwiftUI

struct ArtifactDetailsView: View {
    @EnvironmentObject var mainCat: MainCategory
    var artifact : Artifact
    
    var body: some View {
        VStack {
            HStack {
                Image(artifact.imageName)
                Text(artifact.name)
                    .font(.title)
            }
            HStack{
                VStack(alignment: .leading) {
                    Text("Slot: " + artifact.slot)
                        .font(.title2)
                    Text("Effect: " + artifact.effect)
                        .font(.title2)
                }
            }
            .padding()
            Text("Artifact Info:")
                .font(.title)
            HStack{
                Text(artifact.description)
                    .font(.title2)
            }
        }
        .navigationTitle("About " + artifact.name)
    }
}

struct ArtifactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ArtifactDetailsView(artifact: MainCategory().artifacts[0])
            .environmentObject(MainCategory())
    }
}
