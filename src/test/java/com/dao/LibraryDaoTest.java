package com.dao;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.entity.Library;

@RunWith(MockitoJUnitRunner.class)
public class LibraryDaoTest {



	@Mock
	private HibernateTemplate hibernateTemplate;

	@Mock
	private LibraryDao libraryDao;
	

	@Before
	public void setUp() throws Exception {
		MockitoAnnotations.initMocks(this);
	}

	@Test
	public void testGetLibraryDetails() {

		// Given
		int id = 1;
		Library Library = new Library(id, "name", "John Do", 123l, "221B Bakerstreet");

		// When
		when(this.libraryDao.getBookById(id)).thenReturn(Library);

		// Then
		assertEquals("name", Library.getbookName());
	}
	
	@Test
	public void testSave() {
		
		// Given
		Library Library = new Library(1, "name", "John Do", 123l, "221B Bakerstreet");

		// When
		this.libraryDao.save(Library);

	}

	@Test
	public void testGetAllLibrary() {
		// Given
		List<Library> listOfLibrary = new ArrayList<>();
		Library Library1 = new Library(1, "The India Story", "Bimal Jalal", 111, "desc1");
		Library Library2 = new Library(2, "Library2", "author2", 222, "desc2");
		Library Library3 = new Library(3, "Library3", "author3", 333, "desc3");
		listOfLibrary.add(Library1);
		listOfLibrary.add(Library2);
		listOfLibrary.add(Library3);

		// When
		when(this.libraryDao.getAllBooks()).thenReturn(listOfLibrary);

		// Then
		assertEquals(3, listOfLibrary.size());
		assertEquals("Library2", listOfLibrary.get(1).getbookName());
		assertEquals(3, listOfLibrary.get(2).getBookId());
	}

	@Test
	public void testDeleteLibrary() {

		// Given
		List<Library> listOfLibrary = new ArrayList<>();
		Library Library1 = new Library(1, "The India Story", "Bimal Jalal", 111, "desc1");
		Library Library2 = new Library(2, "Library2", "author2", 222, "desc2");
		Library Library3 = new Library(3, "Library3", "author3", 333, "desc3");
		listOfLibrary.add(Library1);
		listOfLibrary.add(Library2);
		listOfLibrary.add(Library3);

		// When
		
		libraryDao.deleteBook(1);	 
	    
		// Then
	    verify(libraryDao).deleteBook(1);

	}

}
