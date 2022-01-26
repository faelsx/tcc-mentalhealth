import 'package:flutter/material.dart';
import 'package:mentalhealth_app/shared/themes/app_colors.dart';
import 'package:mentalhealth_app/shared/themes/app_text_styles.dart';
import 'package:mentalhealth_app/shared/themes/widgets/contacts/contact_widget.dart';
import 'package:mentalhealth_app/shared/themes/widgets/menu/menu_bar.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        body: Column(
          children: [
            MenuBar(),
            Padding(
              padding: const EdgeInsets.only(top: 29, bottom: 47),
              child: Text(
                "Contatos de apoio",
                style: AppTextStyles.titleMenu,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 28, right: 28, bottom: 37),
                    child: ContactWidget(
                      title: "Policia Federal",
                      heigth: 0.47,
                      number: "190",
                      subscription:
                          "É o número de telefone da Polícia Militar que deve ser acionado em casos de necessidade imediata ou socorro rápido. O 190 recebe ligações de forma gratuita em todo o território nacional e, no Paraná, também pode ser acionado por aplicativo. \nAo receber um chamado, os policiais militares fazem uma breve filtragem dos relatos, para avaliar as situações que precisam de pronta intervenção.",
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 28, right: 28, bottom: 37),
                    child: ContactWidget(
                      title: "Centro de Valorização da Vida",
                      heigth: 0.45,
                      number: "188",
                      subscription:
                          "Você pode conversar com um voluntário do CVV ligando para 188 de todo o território nacional, 24 horas todos os dias de forma gratuita. \nAqui, como em qualquer outra forma de contato com o CVV, você é atendido por um voluntário, com respeito, anonimato, e que guardará estrito sigilo sobre tudo que for dito e de forma gratuita.",
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 28, right: 28, bottom: 37),
                    child: ContactWidget(
                      title: "Corpo de Bombeiros",
                      heigth: 0.45,
                      number: "193",
                      subscription:
                          "O telefone 193 é o número do Corpo de Bombeiros para emergências, disponibilizado de forma gratuita em todo território nacional.\nAo ligar para o 193, tenha sempre em mãos dados que possam ser transmitidos ao atendente para agilizar o atendimento, como o endereço do local, características específicas do evento e condições das vítimas. \nConforme as informações passadas na ligação telefônica, os bombeiros identificam o tipo de ocorrência, a gravidade do caso, a real necessidade de deslocamento de equipes e o tipo de socorro mais adequado.",
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 28, right: 28, bottom: 37),
                    child: ContactWidget(
                      title: "Samu",
                      heigth: 0.54,
                      number: "192",
                      subscription:
                          "O SAMU 192 é o serviço de atendimento às urgências de saúde do cidadão, conforme a área de cobertura implantada no Estado.\nApós o contato do cidadão com a Central de Regulação do SAMU 192, a partir dos dados fornecidos, os profissionais reguladores decidem se é necessário o envio da ambulância ou é suficiente uma orientação. \nPara as situações que exigem envio de ambulância, o regulador classifica a prioridade e aciona a base onde fica a equipe de atendimento, a qual se desloca ao local do chamado.",
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 28, right: 28, bottom: 37),
                    child: ContactWidget(
                      title: "Disque Direitos Humanos",
                      heigth: 0.64,
                      number: "100",
                      subscription:
                          "Serviço Público fornecido pela Secretaria de Direitos Humanos da Presidência da República, ligado à Ouvidoria Nacional de Direitos Humanos, para receber denúncias relacionadas a violações de direitos humanos, especialmente aquelas que afetem populações vulneráveis, como crianças, idosos, pessoas com deficiências, LGBTI, desabrigados e questões relacionadas a companhias aéreas. As denúncias são recebidas, examinadas e encaminhadas a autoridades dentro de 24 horas. O serviço também fornece informações sobre os direitos humanos no Brasil e diretrizes de ações, e serviços de direitos humanos disponíveis nos níveis federal, estadual e municipal.",
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 28, right: 28, bottom: 37),
                    child: ContactWidget(
                        title: "Central Atendimento à Mulher",
                        heigth: 0.64,
                        number: "180",
                        subscription:
                            "Serviço Público fornecido pela Secretaria de Direitos Humanos da Presidência da República, ligado à Ouvidoria Nacional de Direitos Humanos, para receber denúncias relacionadas a violações de direitos humanos, especialmente aquelas que afetem populações vulneráveis, como crianças, idosos, pessoas com deficiências, LGBTI, desabrigados e questões relacionadas a companhias aéreas. As denúncias são recebidas, examinadas e encaminhadas a autoridades dentro de 24 horas. O serviço também fornece informações sobre os direitos humanos no Brasil e diretrizes de ações, e serviços de direitos humanos disponíveis nos níveis federal, estadual e municipal."),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
