import SwiftUI

struct NoticiaItemSimplesView: View {
    var titulo: String
    var fonte: String
    var tempo: String
    var fonteNoticia: String
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Circle()
                        .frame(width: 8, height: 8)
                    Text(titulo)
                        .font(.headline)
                        .bold()
                        .lineLimit(2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                Text(fonte)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
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
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.vertical, 10)
            .frame(width: geometry.size.width)
        }
        .frame(height: 100)
    }
}

#Preview {
    NoticiaItemSimplesView(titulo: "Abril azul. Mês de debate conscientização sobre o Autismo!", fonte: "Lide", tempo: "2 dias atrás", fonteNoticia: "Fonte")
}
