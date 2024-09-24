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
                                    Image(systemName: "calendar.badge.plus")
                                        .font(.largeTitle)
                                        .foregroundColor(Color.cabecalho)
                            
                
                                    Text("Agendar consulta")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                .padding(20)
                                .frame(width: geometry.size.width / 3 - 10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            }
                        
                            NavigationLink(destination: ConsultasAgendadas()) {
                                VStack {
                                        
                                        Image(systemName: "list.bullet")
                                            .font(.largeTitle)
                                            .foregroundColor(Color.cabecalho)
                                    
                                    Text("Consultas agendadas")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                .padding(10)
                                .padding(.vertical,15)

                                .frame(width: geometry.size.width / 3 - 10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            }
                            
                            NavigationLink(destination: HistoricoConsultasView()) {
                                VStack {
                                        
                                        Image(systemName: "doc.text.below.ecg")
                                            .font(.largeTitle)
                                            .foregroundColor(Color.cabecalho)
                                    Text("Histórico Consultas")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                .padding(10)
                                
                                .padding(.vertical,10)
                                .frame(width: geometry.size.width / 3 - 10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            }
                        }

                        VStack(alignment: .leading) {
                            Text("Próximos agendamentos")
                                .font(.headline)
                                .padding(.leading)
                            
                            NavigationLink(destination:ConsultasAgendadas()){
                                
                                ZStack(alignment: .leading) {
                                    Image("linhas")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    VStack(alignment: .leading) {
                                        Text("Dr. Osvaldo Júnior")
                                            .font(.headline)
                                           
                                        Text("Oftalmologista")
                                            .font(.subheadline)
                                            
                                        Text("Abr 03, 10:00am")
                                            .font(.caption)
                                            
                                    }
                                    .foregroundColor(.white)
                                    .padding(.leading)
                                    
                                    
                                }
                                .cornerRadius(10)
                                .padding()

                            }

                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Campanhas")
                                    .font(.headline)
                                    .padding(.leading)
                                
                                Link(destination: URL(string: "https://www.google.com/?client=safari")!) {
                                    Image("campanha2")
                                        .resizable()
                                        .frame(width: geometry.size.width - 40, height: geometry.size.height - 400)
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(10)
                                        .padding(.horizontal)
                                }
                            }
                        }                        
                    }
                    .padding(.leading)
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




