
function validarFormulario() {
  // Obter os valores dos campos
  const email = document.getElementById('email').value;
  const senha = document.getElementById('senha').value;
  const erroMensagem = document.getElementById('erro-mensagem');
  
  // Limpar mensagens anteriores
  erroMensagem.innerHTML = '';

  // Validar o email
  if (email.length < 6 || email.length > 25) {
      erroMensagem.innerHTML += '<p>O email deve ter entre 6 e 25 caracteres.</p>';
      return false;
  }

  // Validar senha
  if (senha.length < 3 || senha.length > 8) {
      erroMensagem.innerHTML += '<p>A senha deve ter entre 3 e 8 caracteres.</p>';
      return false;
  }

  // Mensagem de sucesso
  erroMensagem.innerHTML =  '<p>SUCESSO!</p>';
  return true;
}

 // Obtém o modal
//let modal = document.getElementById("myModal");

// Obtém o botão que abre o modal
//let btn = document.getElementById("loginButton");

// Obtém o <span> que fecha o modal
//let span = document.getElementsByClassName("close")[0];

// Quando o usuário clica no botão, abre o modal
/*btn.onclick = function() {
    modal.style.display = "block";
}

// Quando o usuário clica no <span> (x), fecha o modal
span.onclick = function() {
    modal.style.display = "none";
}

// Quando o usuário clica em qualquer lugar fora do modal, fecha o modal
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}*/


if(erro == 1) {
    document.getElementById('erro-mensagem').innerHTML += '<p>o usuario não existe</p>';
    document.getElementById('erro-mensagem').style.color = 'red';
}
else if (erro == 2) {
    document.getElementById('erro-mensagem').innerHTML += '<p>senha invalida</p>';
    document.getElementById('erro-mensagem').style.color = 'red';

}
