package moviereviews.admin;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class MovieDbAdminTest {
	private AdminModel adminModel;
	
	@Test
	public void testCanRetrieveOneMovie() {
		adminModel.addMovie("The African Queen");
		String[] movieList = adminModel.getMovieList();
		assertArrayEquals(new String[] {"The African Queen"}, movieList);
	}
	
	@Test
	public void testCanRetrieveZeroMovies() {
		String[] movieList = adminModel.getMovieList();
		assertArrayEquals(new String[] {}, movieList);
	}

	@Test
	public void testCanAddMovies() {
		adminModel.addMovie("The Gods Must Be Angry");
		assertEquals(1, adminModel.getMovieCount());
	}
	
	@Test
	public void testStartWithNoMovies() {
		assertEquals(0, adminModel.getMovieCount());
	}
	
	@Before
	public void setUp() {
		adminModel = new AdminModel();
		adminModel.emptyDb();
	}
}
