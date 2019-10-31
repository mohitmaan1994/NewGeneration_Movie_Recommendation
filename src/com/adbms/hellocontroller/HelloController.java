package com.adbms.hellocontroller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.adbms.dao.MovieDaoImpl;
import com.adbms.model.Movies;



@Controller
public class HelloController{
	
	@Autowired
	private MovieDaoImpl movieDaoImpl;
	private List<Movies> movieList;
	private List<Movies> reccmovieList;
	private List<Movies> ageMoviesList;
	private List<Movies> locationMoviesList;
	
	@RequestMapping(value="/welcome", method = RequestMethod.GET)
	public ModelAndView helloWorld(){
		
		ModelAndView model = new ModelAndView("HelloPage");
    	return model;
	}
	
	@RequestMapping(value="/submitUserid", method = RequestMethod.POST)
	public ModelAndView submitUserid(@RequestParam("userId") int userId){
		
		ModelAndView model = new ModelAndView("SelectMovie");
		movieList = movieDaoImpl.userMovies(userId);
		
		for(int i=0; i <movieList.size(); i++){
		System.out.println("list of movies" + movieList.get(i));
		}
		model.addObject("msg",userId);
		model.addObject("movieList",movieList);
		
		return model;
	}
	
	@RequestMapping(value="/submitMovie", method = RequestMethod.POST)
	public ModelAndView submitMovie(@RequestParam("Title") String Title){
		
		reccmovieList = movieDaoImpl.reccMovies(5);
		ageMoviesList = movieDaoImpl.ageMovies(5);
		locationMoviesList = movieDaoImpl.locationMovies(5);
		ModelAndView model = new ModelAndView("ShowMovies");
		model.addObject("Title",Title);
		model.addObject("reccmovieList",reccmovieList);
		model.addObject("ageMoviesList",ageMoviesList);
		model.addObject("locationMoviesList",locationMoviesList);
		return model;
	}
	
	
}
