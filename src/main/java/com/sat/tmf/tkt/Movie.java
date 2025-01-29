package com.sat.tmf.tkt;

import java.util.List;

public class Movie {
	private int movieId;
	private String movieName;
	private String avgRating;
	private int releaseYear;
	private double runningTime;
//	private List<Cast> castingList;
	
	public Movie(int movieId, String movieName, String avgRating, int releaseYear, double runningTime) {
		super();
		this.movieId = movieId;
		this.movieName = movieName;
		this.avgRating = avgRating;
		this.releaseYear = releaseYear;
		this.runningTime = runningTime;
	}

	
	public int getMovieId() {
		return movieId;
	}


	public void setMovieId(int movieId) {
		this.movieId = movieId;
	}


	public String getMovieName() {
		return movieName;
	}

	public void setMovieName(String movieName) {
		this.movieName = movieName;
	}

	public String getAvgRating() {
		return avgRating;
	}

	public void setAvgRating(String avgRating) {
		this.avgRating = avgRating;
	}

	public int getReleaseYear() {
		return releaseYear;
	}

	public void setReleaseYear(int releaseYear) {
		this.releaseYear = releaseYear;
	}

	public double getRunningTime() {
		return runningTime;
	}

	public void setRunningTime(double runningTime) {
		this.runningTime = runningTime;
	}
	
	
}
