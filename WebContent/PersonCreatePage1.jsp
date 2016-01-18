<!-- PERSON CREATE PAGE #1 -->
<div data-role="page" id="PersonCreate1">
	<%@include file="Header.jsp"%>
	<div data-role="main" class="ui-content">
		<%@include file="Menu.jsp"%>
		<form>
			<input type="text" name="firstname" id="firstname" placeholder="Nombre(s)">
			<input type="text" name="lastname" id="lastname" placeholder="Apellido(s)">
			<label for="birthdate">Fecha de Nacimiento:</label>
			<input type="date" name="birthdate" id="birthdate">
			<label for="gender">Sexo:</label>
			<fieldset id="gender" data-role="controlgroup" data-type="horizontal">
				<label>Sexo</label>
		        <label for="male">Masculino</label>
				<input type="radio" name="gender" id="male" value="M">
				<label for="female">Femenino</label>
				<input type="radio" name="gender" id="female" value="F">	
			</fieldset>
			<input type="text" name="medicalcoverage" id="medicalcoverage" placeholder="Obra Social">
			<input type="text" name="affiliatenumber" id="affiliatenumber" placeholder="N&uacute;mero de Afiliado">
			<textarea name="address" id="address" placeholder="Domicilio"></textarea>
			<input type="text" name="phone" id="phone" placeholder="Tel&eacute;fono">
			<div data-role="controlgroup" data-type="horizontal">
				<a href="#PersonCreate2" class="ui-btn" data-transition="slide" style="width: 340px;">Siguiente</a>
			</div>
		</form>
	</div>
	<%@include file="Footer.jsp"%>
</div>	