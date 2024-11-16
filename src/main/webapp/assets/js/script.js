/**
 * 
 */

const heading = document.getElementById("heading");
let count = 0;
heading.addEventListener("click", () => {
	count++;
	if (count % 2 == 0) {
		heading.style.background = "white";
	}
	else {
		heading.style.background = "transparent";
	}

})

console.log(heading);