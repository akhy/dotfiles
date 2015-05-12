function backToReferrer() {
	if (history.length > 0) {
		history.go(-1);
	} else {
		if (document.referrer) {
			if (confirm('Cannot go back, open referrer page?')) {
				document.location = document.referrer;
			}
		} else {
			liberator.echomsg("Cannot go back :(");
		}
	}
}

commands.add(
	["backtoreferrer"],
	"Go back in history, use referrer as fallback",
	backToReferrer
	);
