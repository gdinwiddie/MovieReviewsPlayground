package moviereviews;

import static org.junit.Assert.*;

import org.junit.Test;


public class MovieTest {
	@Test
	public void canCreateMoveieWithTitle() {
		Movie uut = new Movie("A Nonsense Title");
		assertEquals("A Nonsense Title", uut.getTitle());
	}

}
