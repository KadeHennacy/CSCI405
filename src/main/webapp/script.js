

function checkStars() {
	const radioButtons = document.querySelectorAll('input[name="star"]');
	let checked = false
	for (const radioButton of radioButtons) {
		if (radioButton.checked) {
			checked = true
			break;
		}
	}
	if(!checked){
		alert("Enter stars")
	}
	else{
		clearInputs()
	}
	return checked
}
function clearInputs() {
	document.getElementById('reviewForm').submit();
	document.getElementById('reviewForm').reset();
}