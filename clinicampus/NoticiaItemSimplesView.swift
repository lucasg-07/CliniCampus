//
//  NoticiaItemSimplesView.swift
//  clinicampus
//
//  Created by found on 13/09/24.
//

import SwiftUI

struct NoticiaItemSimplesView: View {
    var titulo: String
    var fonte: String
    var tempo: String
    var fonteNoticia: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Circle()
                    .frame(width: 8, height: 8)
                Text(titulo)
                    .font(.headline)
                    .bold()
            }
            
            Text(fonte)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            HStack {
                Text(tempo)
                    .font(.footnote)
                    .foregroundColor(.gray)
                Text("|")
                    .font(.footnote)
                    .foregroundColor(.gray)
                Text(fonteNoticia)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
        }
    }
}
#Preview {
    NoticiaItemSimplesView(titulo: "Abril azul. Mês de debate conscientização sobre o Autismo!", fonte: "Lide", tempo: "2 dias atrás", fonteNoticia: "Fonte")
}
