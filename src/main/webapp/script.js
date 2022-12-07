

function checkStars() {
	const radioButtons = document.querySelectorAll('input[name="star"]');
	let checked = false
	for (const radioButton of radioButtons) {
		if (radioButton.checked) {
			checked = true
			break;
		}
	}
	if (!checked) {
		alert("Enter stars")
	}
	else {
		clearInputs()
	}
	return checked
}
function clearInputs() {
	document.getElementById('reviewForm').submit();
	document.getElementById('reviewForm').reset();
}

function submitForm() {
	var http = new XMLHttpRequest();
	http.open("POST", "/points", true);
	http.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	var params = "code=" + document.getElementById("code").value;
	http.send(params);
	location.reload();
	return false;
}