import SwiftUI

struct NoticiaItemView: View {
    var imagemNome: String
    var titulo: String
    var descricao: String
    var tempo: String
    var fonte: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(imagemNome)
                .resizable()
                .aspectRatio(contentMode: .fit) 
                .frame(maxWidth: .infinity)
                .cornerRadius(10)
                .clipped()
            
            Text(titulo)
                .font(.headline)
                .bold()
                .lineLimit(2)
            
            Text(descricao)
                .font(.subheadline)
                .foregroundColor(.gray)
                .lineLimit(3)
            
            HStack {
                Text(tempo)
                    .font(.footnote)
                    .foregroundColor(.gray)
                Text("|")
                    .font(.footnote)
                    .foregroundColor(.gray)
                Text(fonte)
                    .font(.footnote)
                    .foregroundColor(.gray)
            }
        }
        .padding(.vertical, 10)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    NoticiaItemView(imagemNome: "Vacina", titulo: "Aumento nos casos de covid-19", descricao: "O Brasil enfrenta mais uma onda de variantes do vírus da covid-19: os casos da doença registraram um aumento de 70% em apenas uma semana.", tempo: "2 horas atrás", fonte: "Fonte")
}
