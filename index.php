<?php
session_start();
?>
<!DOCTYPE html>
<html lang="pt-br">
	<head>
		<meta charset="utf-8">
		<title>Boletos-Form</title>
		<link rel="stylesheet" href="css/estilos.css"/>	
	</head>
	<body>
	<p class="logot">
	<img src="https://secureservercdn.net/45.40.152.13/g8g.8af.myftpupload.com/wp-content/themes/athena/_assets/images/logo.png"  />
	</p>	
		<div class="container">
			<div class="wrapper animated bounceInLeft">
				<div class="contact">
					<h3 class="contact-us">Teresina Boletos </h3>
						<?php
						if(isset($_SESSION['msg'])){
							echo $_SESSION['msg'];
							unset($_SESSION['msg']);
						}
						?>

						<form id="contactForm" method="POST" action="processa.php">
							<!--CPF do Beneficiário-->
							<p class="cpf-field">
							<label>CPF (Responsável Financeiro): <span>*</span></label>
							<input type="text" name="cpf" placeholder="Digite o nome CPF" required><br><br>
							</p>

							<!--Matrícula do Beneficiário-->
							<p class="matricula-field">
							<label>Matrícula do Beneficiário <span>*</span></label>
							<input type="text" name="matricula" placeholder="Digite a Matrícula" required><br><br>
							</p>

							<!--E-mail-->
							<p class="email-field">
							<label>Email (Se diferente) </label>
							<input type="email" name="email" placeholder="Digite o e-mail"><br><br>
							</p>

							
							<!--Retirada-->
              
							<p class="retirada-field ">
                				<label for="retirada">Retirada JUROS e MULTA:</label>

								<select name="retirada">
								<option value="nao">Não</option>
								<option value="sim">Sim</option>
                  
                				</select>
              					</p>

								<!--Mês-->
								<p class="mes-field ">
									<label for="mes">Mês:</label>

									<select name="mes">
									<option value="janeiro">Janeiro</option>
									<option value="fevereiro">Fevereiro</option>
									<option value="marco">Março</option>
									<option value="abril">Abril</option>
									<option value="maio">Maio</option>
									<option value="junho">Junho</option>
									<option value="julho">Julho</option>
									<option value="agosto">Agosto</option>
									<option value="setembro">Setembro</option>
									<option value="outubro">Outubro</option>
									<option value="novembro">Novembro</option>
									<option value="dezembro">Dezembro</option>  
									</select>
								
								</p>

							<p class="submit-button">
							<input type="submit" value="Cadastrar" background: #49b0e7;>
							</p>
						</form>
					
				</div>
			</div>
		</div>
	</body>
</html>