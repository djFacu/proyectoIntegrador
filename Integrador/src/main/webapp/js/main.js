function VentaConfirmada() {
	window.location="tickets.html";
	//window.open("tickets.html");
}

const btnConf = document.getElementById("btnConfimar");
btnConf.addEventListener("click",VentaConfirmada);