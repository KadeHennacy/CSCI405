function checkStars() {
	if ($('input[name=star]:checked').length === 0) {
		alert("Please rate how many stars")
	}
}

function clearInputs(){
	document.getElementById('reviewForm').reset();
}