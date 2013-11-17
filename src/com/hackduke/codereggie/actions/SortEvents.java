package com.hackduke.codereggie.actions;

import java.util.ArrayList;

import com.google.appengine.api.datastore.Entity;
import com.google.appengine.api.datastore.DatastoreServiceFactory;
import com.google.appengine.api.datastore.DatastoreService;
import com.google.appengine.api.datastore.Query.Filter;
import com.google.appengine.api.datastore.Query.FilterPredicate;
import com.google.appengine.api.datastore.Query.FilterOperator;
import com.google.appengine.api.datastore.Query.CompositeFilter;
import com.google.appengine.api.datastore.Query.CompositeFilterOperator;
import com.google.appengine.api.datastore.Query;
import com.google.appengine.api.datastore.PreparedQuery;
import com.google.appengine.api.datastore.Query.SortDirection;

public class SortEvents {
	
	public ArrayList<String> sortBySoonest() {
		ArrayList<String> eventsImages = new ArrayList<String>();
		
		// Get the Datastore Service
		DatastoreService datastore = DatastoreServiceFactory.getDatastoreService();
		
		// Use class Query to assemble a query
		Query q = new Query("Event");
		q.addSort("date", SortDirection.DESCENDING);

		// Use PreparedQuery interface to retrieve results
		PreparedQuery pq = datastore.prepare(q);

		for (Entity result : pq.asIterable()) {
		  String imageID = (String) result.getProperty("imageUrl");
		  eventsImages.add(imageID);
		}
		
		for (int i = 0; i < eventsImages.size(); i++) {
			System.out.println(eventsImages.get(i));
		}
		
		return eventsImages;
	}
	
	
	
}
