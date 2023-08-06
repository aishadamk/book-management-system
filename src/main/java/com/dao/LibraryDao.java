package com.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.entity.Library;

@Component
public class LibraryDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public void save(Library lib) {
		this.hibernateTemplate.saveOrUpdate(lib);

	}

	// get all books
	public List<Library> getAllBooks() {
		List<Library> listofBooks = this.hibernateTemplate.loadAll(Library.class);

		return listofBooks;
	}

	// delete
	@Transactional
	public void deleteBook(int bookId) {
		Library library = this.hibernateTemplate.load(Library.class, bookId);
		this.hibernateTemplate.delete(library);
	}

	// get single book
	public List<Library> getBookByName(String bookName) {

		String hqlQuery = "FROM Library l WHERE l.bookName = :bookName";

		List<Library> libraries = (List<Library>) hibernateTemplate.findByNamedParam(hqlQuery, "bookName", bookName);

		return libraries;
	}

	public Library getBookById(int bookId) {
		return this.hibernateTemplate.get(Library.class, bookId);
	}

}
