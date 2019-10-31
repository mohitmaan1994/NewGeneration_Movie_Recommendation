package com.adbms.model;

public class Movies {
	
	int movieId;
	String title;
	double rating;
	
	public Movies() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Movies(int movieId, String title, double rating) {
		super();
		this.movieId = movieId;
		this.title = title;
		this.rating = rating;
	}

	public int getMovieId() {
		return movieId;
	}

	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public double getRating() {
		return rating;
	}

	public void setRating(double rating) {
		this.rating = rating;
	}

	@Override
	public String toString() {
		return "Movies [movieId=" + movieId + ", title=" + title + ", rating="
				+ rating + "]";
	}
	
	
}
