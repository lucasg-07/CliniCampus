import SwiftUI

struct InformacoesGeraisConsultaAgendada: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "stethoscope")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                    
                    Text("CliniCampus")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.vertical)
                    
                    Spacer()
                }
                .padding()
                .background(Color.cabecalho)
                
                GeometryReader { geometry in
                    VStack(alignment: .leading, spacing: 30) {
                        
                        HStack(spacing: 7) {
                            NavigationLink(destination: AreaConsultaView()) {
                                VStack {
                                    ZStack {
                                        Circle()
                                            .fill(Color.cabecalho)
                                            .frame(width: 55, height: 55)
                                        Image(systemName: "calendar.badge.plus")
                                            .font(.largeTitle)
                                            .foregroundColor(.white)
                                            
                                    }
                                    Text("Agendar consulta")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .frame(width: geometry.size.width / 3 - 10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            }
                            
                            NavigationLink(destination: ConsultasAgendadas()) {
                                VStack {
                                    ZStack {
                                        Circle()
                                            .fill(Color.cabecalho)
                                            .frame(width: 55, height: 55)
                                        Image(systemName: "list.bullet")
                                            .font(.largeTitle)
                                            .foregroundColor(.white)
                                    }
                                    Text("Consultas agendadas")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .frame(width: geometry.size.width / 3 - 10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            }
                            
                            NavigationLink(destination: HistoricoConsultasView()) {
                                VStack {
                                    ZStack {
                                        Circle()
                                            .fill(Color.cabecalho)
                                            .frame(width: 55, height: 55)
                                        Image(systemName: "doc.text.below.ecg")
                                            .font(.largeTitle)
                                            .foregroundColor(.white)
                                    }
                                    Text("Histórico Consultas")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .frame(width: geometry.size.width / 3 - 10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            }
                        }

                        VStack(alignment: .leading) {
                            Text("Próximos agendamentos")
                                .font(.headline)
                            
                            NavigationLink(destination:ConsultasAgendadas()){
                                
                                ZStack(alignment: .leading) {
                                    Image("linhas")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    VStack(alignment: .leading) {
                                        Text("Dr. Osvaldo Júnior")
                                            .font(.headline)
                                            .foregroundColor(.black)
                                        Text("Oftalmologista")
                                            .font(.subheadline)
                                            .foregroundColor(.black)
                                        Text("Abr 03, 10:00am")
                                            .font(.caption)
                                            .foregroundColor(.black)
                                    }
                                    .padding(.leading)
                                    
                                    
                                }
                                .cornerRadius(10)
                            }

                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Campanhas")
                                    .font(.headline)
                                
                                Link(destination: URL(string: "https://www.google.com/?client=safari")!) {
                                    Image("campanha1")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(10)
                                        .frame(width: geometry.size.width - 40)
                                }
                            }
                        }
                        .padding(.leading)
                        
                    }
                    .padding()
                    .frame(width: geometry.size.width)
                }
            }
        }
        
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    InformacoesGeraisConsultaAgendada()
}





