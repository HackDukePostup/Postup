package com.hackduke.codereggie.servlets;

//file Upload.java

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.datastore.Entity;

import java.util.Date;

import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.DatastoreServiceFactory;

public class Upload extends HttpServlet {
	private BlobstoreService blobstoreService = BlobstoreServiceFactory
			.getBlobstoreService();

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		DatastoreService datastore = DatastoreServiceFactory
				.getDatastoreService();

		Map<String, BlobKey> blobs = blobstoreService.getUploadedBlobs(req);
		BlobKey blobKey = blobs.get("myFile");
		System.out.println("Got image blob");
		Entity event = new Entity("Event");
		event.setProperty("imageBlobKey", blobKey.getKeyString());
		event.setProperty("title", req.getParameter("title"));
		event.setProperty("address", req.getParameter("address"));
		System.out.println("Got to address");
		// where string is the date from the request object; change later
		/*String string = "2011-03-22";
		try {
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(string);
			event.setProperty("date", date.toString());
		} catch (Exception e) {
		}*/
		event.setProperty("additionalInfo", req.getParameter("additionalInfo"));
		event.setProperty("tags", req.getParameter("tags"));
		System.out.println("Got to tags");
		String venues = req.getParameter("venues");
		StringTokenizer strtok = new StringTokenizer(venues, ",");
		while (strtok.hasMoreTokens()) {
			String venue = strtok.nextToken();
			Entity associatedEvent = new Entity("Event");
			associatedEvent = event;
			associatedEvent.setProperty("venue", venue);
			System.out.println("We're gonna try adding the Entity to the datastore...");
			datastore.put(associatedEvent);
			System.out.println("WE DID IT");
		}
		System.out.println("Time to redirect...");
		res.sendRedirect("/index.jsp");
	}
}
