package com.adbms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.adbms.model.Movies;

public class MovieDaoImpl {
	
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplate;
	private List<Movies> movieList;
	

	public List<Movies> userMovies(int userId)
	{
		System.out.println("In user movies dao");
		String sql = "select Title,MovieId from Movies m join Ratings r on m.MovieId = r.MovieId and UserId = ?";
		
		movieList  = jdbcTemplate.query(
				   sql,new Object[] { userId }, new MoviesMapper());
		return movieList;
	}
	
	public List<Movies> ageMovies(int userId){
		
		System.out.println("In age movies dao");
		
		String sql = "select distinct Title,rating from Movies m join Ratings r on m.MovieId = r.MovieId join Users u on u.UserId = r.UserId and Age_Group = (select Age_Group from Users  where UserId= ?) group by rating";
		
		movieList  = jdbcTemplate.query(
				   sql,new Object[] { userId }, new MoviesMapper());
		return movieList;
		
	}
	
    public List<Movies> locationMovies(int userId){
		
		System.out.println("In location movies dao");
		
		String sql = "select distinct Title,rating from Movies m join Ratings r on m.MovieId = r.MovieId join Users u on u.UserId = r.UserId and Location = (select Location from Users  where UserId= ?) group by rating";
		
		movieList  = jdbcTemplate.query(
				   sql,new Object[] { userId }, new MoviesMapper());
		return movieList;
		
	}
    
    public List<Movies> reccMovies(int userId)
	{
		System.out.println("In recc movies dao");
		String sql = "select distinct Title from Movies m join Tags t on m.MovieId = t.MovieId join Ratings r on t.MovieId = r.MovieId join Genres g on t.MovieId = g.MovieId and r.rating between ( (select rating from Ratings where (MovieId = ?) and (UserID = ?) ) - 0.5) and ( (select rating from Ratings where (MovieId = ?) and (UserID = ?) ) + 0.5) AND t.Tag = (select Tag from Tags t join Movies m on t.MovieId = m.MovieId";
		
		movieList  = jdbcTemplate.query(
				   sql,new Object[] { userId }, new MoviesMapper());
		return movieList;
	}
	
		
		public class MoviesMapper implements RowMapper<Movies>{
			
			public Movies mapRow(ResultSet rs, int rowNum) throws SQLException{
				
				Movies movies = new Movies();
				movies.setTitle(rs.getString("Title"));
				movies.setMovieId(rs.getInt("MovieId"));
				movies.setRating(rs.getDouble("rating"));
				
				return movies;
			}
		}
		

	
	public DataSource getDataSource() {
		return dataSource;
	}

	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	

}
