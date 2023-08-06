package com.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.dao.LibraryDao;
import com.entity.Library;

@Controller
public class HomeController {

//	@Autowired
//	ServletContext context;
//	
	@Autowired
	LibraryDao libraryDao;

	@RequestMapping("/home")
	public String home(Model m) {

		String str = "home";
		m.addAttribute("page", str);

		List<Library> list = this.libraryDao.getAllBooks();
		m.addAttribute("libraries", list);
		return "home";
	}

	/**
	 * This method returns all books
	 * 
	 * @param m
	 * @return
	 */
	@RequestMapping("/view")
	public String viewBook(Model m) {
		List<Library> list = this.libraryDao.getAllBooks();
		m.addAttribute("libraries", list);
		return "viewBook";
	}

	/**
	 *  Method to add new book entry
	 * 
	 * @param m
	 * @return
	 */
	@RequestMapping("/add")
	public String AddBook(Model m) {

		Library l = new Library();
		m.addAttribute("title", "Add Book");
		m.addAttribute("library", l);
		return "addBook";
	}

	/**
	 * Method to save book into database
	 * 
	 * @param l
	 * @param m
	 * @return
	 */
	@RequestMapping(value = "/saveBook", method = RequestMethod.POST)
	public String saveBook(@ModelAttribute("library") Library l, Model m) {

		// get the Library list from context

		this.libraryDao.save(l);
		m.addAttribute("msg", "Successfully added..");
		return "home";
	}
	
	
	/**
	 * Deleting book based by ID
	 * 
	 * @param bookId
	 * @param m
	 * @return
	 */
	@RequestMapping("/delete-book/{bookId}")
	public String deleteBook(@PathVariable("bookId") int bookId,Model m) {
		this.libraryDao.deleteBook(bookId);
		List<Library> list = this.libraryDao.getAllBooks();
		m.addAttribute("libraries", list);
		m.addAttribute("msg", "Successfully deleted id: "+bookId);
		return "home";
	}
	
	/**
	 * 
	 * Fetch book details based by Book name
	 * @param l
	 * @param m
	 * @return
	 */
	@RequestMapping(value = "/getBookDetails", method = RequestMethod.POST)
	public String getBookDetails(@ModelAttribute("library") Library l, Model m) {
		
		List<Library> book = libraryDao.getBookByName(l.getbookName());
		m.addAttribute("books", book);

		return "home";
	}
	
	/**
	 * Update book details
	 * 
	 * @param bookId
	 * @param m
	 * @return
	 */
	@RequestMapping("/update-book/{bookId}")
	public String updateBook(@PathVariable("bookId") int bookId, Model m) {
		 Library library = this.libraryDao.getBookById(bookId);
		m.addAttribute("book", library);

		return "updateBook";
	}
}


