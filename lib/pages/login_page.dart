import 'package:consulta_app/services/autenticacao_servico.dart';
import 'package:consulta_app/utils/meu_snackbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  bool queroEntrar = true;
  bool esconderSenha = true;
  bool esconderConfirmSenha = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  final TextEditingController _ConfirmSenhaController = TextEditingController();

  final AutenticacaoServico _autenServico = AutenticacaoServico();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(children: [
                SizedBox(
                    height: 350, child: SvgPicture.asset('images/login.svg')),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Este campo deve ser preenchido';
                        }
                        if (value.length < 5) {
                          return 'O email é muito curto';
                        }
                        if (!value.contains('@')) {
                          return 'O e-mail não é valido';
                        }
                        if (!value.contains('.com')) {
                          return 'O e-mail não é valido';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          labelText: 'E-mail', hintText: 'exemplo@exemplo.com')),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: _senhaController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Este campo deve ser preenchido";
                      }
                      if (value.length < 5) {
                        return 'Senha muito curta';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: 'Senha',
                        hintText: '********',
                        suffixIcon: IconButton(
                          icon: (esconderSenha)
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              esconderSenha = !esconderSenha;
                            });
                          },
                        )),
                    obscureText: esconderSenha,
                  ),
                ),
                Visibility(
                  visible: !queroEntrar,
                  child: SizedBox(
                    width: 300,
                    child: TextFormField(
                      controller: _ConfirmSenhaController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Este campo deve ser preenchido";
                        }
                        if (value.length < 5) {
                          return 'Senha muito curta';
                        }
                        if (value != _senhaController.text) {
                          return 'Senha invalida';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: 'Confirmar senha',
                        hintText: '********',
                        suffixIcon: IconButton(
                          icon: (esconderConfirmSenha)
                              ? Icon(Icons.remove_red_eye)
                              : Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              esconderConfirmSenha = !esconderConfirmSenha;
                            });
                          },
                        ),
                      ),
                      obscureText: esconderConfirmSenha,
                    ),
                  ),
                ),
                ElevatedButton(
                  child: Text((queroEntrar) ? 'Login' : 'Cadastrar'),
                  onPressed: () {
                    botaoPrincipal();
                  },
                ),
                TextButton(
                  child: Text((queroEntrar)
                      ? 'Ainda não tem cadastro? Vamos lá!'
                      : 'Já tem conta? Vamos logar!'),
                  onPressed: () {
                    setState(() {
                      queroEntrar = !queroEntrar;
                    });
                  },
                )
              ]),
            ),
          ),
        ),
      ]),
    );
  }

  botaoPrincipal() {
    String email = _emailController.text;
    String senha = _emailController.text;
    if (_formKey.currentState!.validate()) {
      if (queroEntrar) {
        print('Entrada validada');
        _autenServico
            .logarUsuario(email: email, senha: senha)
            .then((String? erro) {
          if (erro != erro) {}
        });
      } else {
        print('Cadastro validado');
        print('${_emailController.text}, ${_senhaController.text}');
        _autenServico.cadastrarUsuario(email: email, senha: senha).then(
          (String? erro) {
            if (erro != null) {
              mostrarSnackbar(context: context, texto: erro);
            } else {
              mostrarSnackbar(context: context, texto: 'Cadastro efetuado com sucesso', isErro: false);
            }
          },
        );
      }
    } else {
      print('Invalido');
    }
  }
}
