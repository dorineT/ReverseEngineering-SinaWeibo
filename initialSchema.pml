conceptual schema conceptualSchema{
	
	entity type ACCOUNT_TABLE{
		uid : int,
		black_magic : string,
		oauth_token : string,
		oauth_token_expires_time : string,
		oauth_token_secret : string,
		navigation_position : string,
		json : string
		identifier{
			uid
		}
	}
	
	entity type EMOTIONS_TABLE{
		id : int,
		json : string
		identifier{
			id
		}
		
	}
	
	entity type GROUP_TABLE{
		id : int,
		accountid : string,
		jsondata: string
		identifier{
			id
		}
		
	}
	
	entity type HOME_TABLE{
		id : int,
		accountid : string,
		timelinedata : string,
		recent_group_id : string
		identifier{
			id
		}
		
		
	}
	entity type HOME_DATA_TABLE{
		id : int,
		accountid : string,
		mblogid:string,
		jsondata:string
		identifier{
			id
		}
		
	}
	entity type HOME_OTHER_GROUP_TABLE{
		id : int,
		accountid : string,
		groupid :string,
		timelinedata:string
		identifier{
			id
		}
		
	}
	entity type HOME_OTHER_GROUP_DATA_TABLE{
		id : int,
		accountid : string,
		mblogid :string,
		groupid:string,
		jsondata:string
		identifier{
			id
		}
		
	}
	entity type COMMENTS_TABLE{
  		id : int, 
  		accountid : string,
  		timelinedata : string 
  		identifier {
    		id 
  		}
	}
	entity type COMMENTS_DATA_TABLE{
	  id : int ,
	  accountid : string,
	  mblogid : string,
	  jsondata : string  
	  identifier {
	    id 
	  }    
	}
	entity type REPOST_TABLE{
	  id : int,
	  accountid : string,
	  timelinedata : string
	  identifier {
	    id 
	  }
	}
	entity type REPOSTS_DATA_TABLE{
	  id : int,
	  accountid : string,
	  mblogid : string,
	  jsondata: string
	  identifier {
	    id 
	  }
	}
	entity type MENTION_COMMENTS_TABLE{
	  id : int,
	  accountid : string,
	  timelinedata : string 
	  identifier {
	  	id 
	  }   
	}
	entity type MENTION_COMMENTS_DATA_TABLE{
	  id : int,
	  accountid : string,
	  mblogid : string,
	  jsondata : string   
	  identifier {
	    id 
	  }    
	}
	entity type COMMENT_BY_ME_TABLE{
        id: int,
        accountid: string,
        timelinedata: string
        identifier {
        	id 
        }
    }
    entity type COMMENT_BY_ME_DATA_TABLE{
        id : int,
        accountid : string,
        mblogid: string,
        jsondata: string
        identifier {
        	id 
        }  
    }
    entity type DMS_TABLE{
        id : int,
        accountid : string,
        mblogid: string,
        jsondata: string
        identifier {
        	id 
       } 
    }
    entity type FAVOURITE_TABLE{
        id : int,
        accountid : string,
        timelinedata: string,
        page: string
        identifier {
        	id 
        } 
    }
    entity type FAVOURITE_DATA_TABLE{
        id : int,
        accountid : string,
        mblogid: string,
        jsondata: string
        identifier {
        	id 
        } 
    }
    entity type MYSTATUS_TABLE{
        id : int,
        accountid : string,
        timelinedata: string    
        identifier {
        	id 
        }
    }
    entity type MYSTATUS_DATA_TABLE{
        id : int,
        accountid : string,
        mblogid: string,
        jsondata: string
        identifier {
        	id 
        }
    }
	entity type FILTER_TABLE{
        id: int ,
        name: string,
        active: string,
        type_: int
        identifier{
            id
        }

    }
    entity type DRAFT_TABLE{
        id: int,
        accountid:text,
        content: string,
        jsondata: string,
        pic: string,
        gps: string,
        type_: int
        identifier {
            id
        }
    }

    entity type ATUSERS_TABLE{
        id: int,
        userid: string,
        accountid: string,
        jsondata: string
        identifier{
            userid,
            accountid
        }
    }

    entity type TOPICS_TABLE{
        id: int,
        accountid: string,
        topic_name: string
        identifier {
            id
        }
    }

    entity type DOWNLOAD_PICTURES_TABLE{
        id: int,
        url: string,
        path: string,
        size: int,
        time: int,
        type_: int
        identifier {
            url
        }
    }

    entity type NOTIFICATION_TABLE{
        id: int,
        accountid: string,
        msgid: string,
        type_: string
        identifier {
            accountid, msgid, type_
        }
    }
    
	
}

physical schemas {
		
	
	relational schema relSchema : mydb{
	
		table ACCOUNT_TABLE{
			columns{
				uid,
				black_magic,
				oauth_token,
				oauth_token_expires_time,
				oauth_token_secret,
				navigation_position,
				json
			}

		}
		
		table EMOTIONS_TABLE{
			columns{
				id,
				json
			}
		}
		
		table GROUP_TABLE{
			columns{
				id,
				accountid,
				jsondata
			}
		}
		
		table HOME_TABLE{
			columns{
				id,
				accountid,
				timelinedata,
				recent_group_id
			}
		}
	
		table HOME_DATA_TABLE{
			columns{
				id,
				accountid,
				mblogid,
				jsondata
			}
		}
			
		table HOME_OTHER_GROUP_TABLE{
			columns{
				id,
				accountid,
				groupid,
				timelinedata
			}
		}
	
	
		table HOME_OTHER_GROUP_DATA_TABLE{
			columns{
				id,
				accountid,
				mblogid,
				groupid,
				jsondata
			}		
		}
		
		
		table COMMENTS_TABLE{
			columns{
				id, 
	  			accountid,
	  			timelinedata 
			}
		}
			
		table COMMENTS_DATA_TABLE{
			columns{
				id ,
		  		accountid,
		  		mblogid,
		  		jsondata 
			}
		}
		
		
		table REPOST_TABLE{
			columns{
				id,
				accountid,
		  		timelinedata	
			}
		}
		
	
		table REPOSTS_DATA_TABLE{
		  	columns{
		  		id,
		  		accountid,
		  		mblogid,
		  		jsondata
		  	}	
		}
		
		table MENTION_COMMENTS_TABLE{
			  columns{
			  	id,
			  	accountid,
			  	timelinedata 
			  }
		}
		
		table MENTION_COMMENTS_DATA_TABLE{
		  columns{
		  	id,
		  	accountid,
		  	mblogid,
		  	jsondata 
		  }
	  
		}
		
		
		table COMMENT_BY_ME_TABLE{
			columns{
				id,
				accountid,
				timelinedata
			}
    	}
    
	    table COMMENT_BY_ME_DATA_TABLE{
			columns{
				id,
				accountid,
				mblogid,
				jsondata
			}
	    }
     
	    table DMS_TABLE{
			columns {
				id,
				accountid,
				mblogid,
				jsondata
			}

	     }
	     
	     table FAVOURITE_TABLE{
			columns {
				id,
				accountid,
				timelinedata,
				page
			}
		
	     }
    
	    table FAVOURITE_DATA_TABLE{
			columns {
				id,
				accountid,
				mblogid,
				jsondata
			}
		}
     
     	table MYSTATUS_TABLE{
			columns {
				id,
				accountid,
				timelinedata				
			}
		 }
    
	    table MYSTATUS_DATA_TABLE{
			columns {
				id,
				accountid,
				mblogid,
				jsondata
			}
	     }
     
     	table FILTER_TABLE{
			columns {
				id,
				name,
				active,
				type_
			}
		 }
     
	     table DRAFT_TABLE{
			columns {
				id,
				accountid,
				content,
				jsondata,
				pic,
				gps,
				type_
			}
		  }

		table ATUSERS_TABLE{
			columns {
				id,
				userid,
				accountid,
				jsondata
			}
		}

	    table TOPICS_TABLE{
			columns {
				id, 
				accountid,
				topic_name			
			}
	    }

	    table DOWNLOAD_PICTURES_TABLE{
			columns {
				id,
				url,
				path,
				size,
				time,
				type_
		    }	    
	    }
	
	    table NOTIFICATION_TABLE{
			columns {
				id,
				accountid,
				msgid,
				type_				
			}
		}
}

}

mapping rules {
	conceptualSchema.ACCOUNT_TABLE(uid,black_magic,oauth_token,oauth_token_expires_time,oauth_token_secret,navigation_position,json) -> relSchema.ACCOUNT_TABLE(uid,black_magic,oauth_token,oauth_token_expires_time,oauth_token_secret,navigation_position,json),
	conceptualSchema.EMOTIONS_TABLE(id,json) -> relSchema.EMOTIONS_TABLE(id,json),
	conceptualSchema.GROUP_TABLE(id,accountid,jsondata) -> relSchema.GROUP_TABLE(id,accountid,jsondata),
	conceptualSchema.HOME_TABLE(id,accountid,timelinedata,recent_group_id) -> relSchema.HOME_TABLE(id,accountid,timelinedata,recent_group_id),
	conceptualSchema.HOME_DATA_TABLE(id,accountid,mblogid,jsondata) -> relSchema.HOME_DATA_TABLE(id,accountid,mblogid,jsondata),
	conceptualSchema.HOME_OTHER_GROUP_TABLE(id,accountid,groupid,timelinedata) -> relSchema.HOME_OTHER_GROUP_TABLE(id,accountid,groupid,timelinedata),
	conceptualSchema.HOME_OTHER_GROUP_DATA_TABLE(id,accountid,mblogid,groupid,jsondata) -> relSchema.HOME_OTHER_GROUP_DATA_TABLE(id,accountid,mblogid,groupid,jsondata),
	conceptualSchema.COMMENTS_TABLE(id, accountid,timelinedata) -> relSchema.COMMENTS_TABLE(id, accountid,timelinedata),
	conceptualSchema.COMMENTS_DATA_TABLE(id ,accountid,mblogid,jsondata ) -> relSchema.COMMENTS_DATA_TABLE(id, accountid,mblogid,jsondata),
	conceptualSchema.REPOST_TABLE(id,accountid,timelinedata) -> relSchema.REPOST_TABLE(id,accountid,timelinedata),
	conceptualSchema.REPOSTS_DATA_TABLE(id ,accountid,mblogid,jsondata) -> relSchema.REPOSTS_DATA_TABLE(id ,accountid,mblogid,jsondata ),
	conceptualSchema.MENTION_COMMENTS_TABLE(id ,accountid,timelinedata) -> relSchema.MENTION_COMMENTS_TABLE(id ,accountid,timelinedata),
	conceptualSchema.MENTION_COMMENTS_DATA_TABLE(id ,accountid,mblogid,jsondata ) -> relSchema.MENTION_COMMENTS_DATA_TABLE(id ,accountid,mblogid,jsondata ),
	conceptualSchema.COMMENT_BY_ME_TABLE(id ,accountid,timelinedata) -> relSchema.COMMENT_BY_ME_TABLE(id ,accountid,timelinedata),
	conceptualSchema.COMMENT_BY_ME_DATA_TABLE(id ,accountid,mblogid,jsondata) -> relSchema.COMMENT_BY_ME_DATA_TABLE(id ,accountid,mblogid,jsondata),
	conceptualSchema.DMS_TABLE(id ,accountid,mblogid,jsondata) -> relSchema.DMS_TABLE(id ,accountid,mblogid,jsondata),
	conceptualSchema.FAVOURITE_TABLE(id,accountid,timelinedata,page) -> relSchema.FAVOURITE_TABLE(id,accountid,timelinedata,page),
	conceptualSchema.FAVOURITE_DATA_TABLE(id,accountid,mblogid,jsondata) -> relSchema.FAVOURITE_DATA_TABLE(id,accountid,mblogid,jsondata),
	conceptualSchema.MYSTATUS_TABLE(id,accountid,timelinedata) -> relSchema.MYSTATUS_TABLE(id,accountid,timelinedata),
	conceptualSchema.MYSTATUS_DATA_TABLE(id,accountid,mblogid,jsondata) -> relSchema.MYSTATUS_DATA_TABLE(id,accountid,mblogid,jsondata),
	conceptualSchema.FILTER_TABLE(id,name,active,type_) -> relSchema.FILTER_TABLE(id,name,active,type_),
	conceptualSchema.DRAFT_TABLE(id,accountid,content,jsondata,pic,gps,type_) -> relSchema.DRAFT_TABLE(id,accountid,content,jsondata,pic,gps,type_),
	conceptualSchema.ATUSERS_TABLE(id,userid,accountid,jsondata) -> relSchema.ATUSERS_TABLE(id,userid,accountid,jsondata),
	conceptualSchema.TOPICS_TABLE(id, accountid,topic_name) -> relSchema.TOPICS_TABLE(id, accountid, topic_name),
	conceptualSchema.DOWNLOAD_PICTURES_TABLE(id,url,path,size,time,type_) -> relSchema.DOWNLOAD_PICTURES_TABLE(id,url,path,size,time,type_),
	conceptualSchema.NOTIFICATION_TABLE(id,accountid,msgid,type_) -> relSchema.NOTIFICATION_TABLE(id,accountid,msgid,type_)
}

databases {
	
	sqlite mydb {
		host: "localhost"
		port: 0
		dbname : "weibo"
	}
	
}




