package moviereviews.admin;

import java.util.ArrayList;
import java.util.List;

public class AdminModel {

	private static List<String> movieList = new ArrayList<String>();

	public void addMovie(String title) {
		movieList.add(title);
	}

	public int getMovieCount() {
		return movieList.size();
	}

	void emptyDb() {
		movieList.clear();
	}

	public String[] getMovieList() {
		return (String[]) movieList.toArray(new String[] {});
	}
}
