package com.hackduke.codereggie.actions;

import com.google.appengine.api.search.Document;
import com.google.appengine.api.search.Index;
import com.google.appengine.api.search.IndexSpec;
import com.google.appengine.api.search.SearchServiceFactory;
import com.google.appengine.api.search.PutException;
import com.google.appengine.api.search.StatusCode;


public class IndexAnEvent {
	
	public void indexAnEvent(String indexName, Document document) {
	    IndexSpec indexSpec = IndexSpec.newBuilder().setName(indexName).build(); 
	    Index index = SearchServiceFactory.getSearchService().getIndex(indexSpec);	    
	    try {
	        index.put(document);
	    } catch (PutException e) {
	        if (StatusCode.TRANSIENT_ERROR.equals(e.getOperationResult().getCode())) {
	            // retry putting the document
	        }
	    }
	}
}