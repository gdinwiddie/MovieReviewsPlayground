package steps;

import cuke4duke.annotation.I18n.EN.Then;

public class Javasteps {
	@Then ("^I should successfully call Java$")
	public void iShouldSuccessfullyCallJava() {
		System.out.println("This is Java.");
	}
	
}