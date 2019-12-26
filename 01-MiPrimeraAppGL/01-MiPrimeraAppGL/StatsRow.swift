//
//  StatsRow.swift
//  01-MiPrimeraAppGL
//
//  Created by Gonzalo Lens on 12/5/19.
//  Copyright © 2019 Gonzalo Lens. All rights reserved.
//

import SwiftUI

struct StatsRow: View {
    
    var statKey: String
    var statValue: String
    
    var body: some View {
        
        HStack(alignment: .center) {
            Text(statKey + ":")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding(.leading,40)
                //.minimumScaleFactor(0.5)
            
            Text(statValue)
                .font(.system(size: 30))
                .fontWeight(.ultraLight)
                //.multilineTextAlignment(.leading)
                .padding(.trailing, 40)
                //.minimumScaleFactor(0.5)
                
                
            
            Spacer()
    
        }//.minimumScaleFactor(0.5)
    }
}

struct StatsRow_Previews: PreviewProvider {
    static var previews: some View {
        StatsRow(statKey: "Origen", statValue: "Nueva Zelanda")
        .previewDevice("iPhone SE")
    }
}
