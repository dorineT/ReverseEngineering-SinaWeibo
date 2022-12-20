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
    
	
	relationship type group_account{
		account[0-N]: ACCOUNT_TABLE
		group[1]: GROUP_TABLE
	}
	relationship type home_account{
		account[0-N]: ACCOUNT_TABLE,
		home[1]: HOME_TABLE
	}
	relationship type home_data_account{
		account[0-N]: ACCOUNT_TABLE,
		homeData[1]: HOME_DATA_TABLE
	}
	relationship type home_other_account{
		account[0-N]: ACCOUNT_TABLE,
		homeOther[1]: HOME_OTHER_GROUP_TABLE
	}
	relationship type home_other_group{
		group[0-N]: GROUP_TABLE,
		homeOther[1]: HOME_OTHER_GROUP_TABLE
	}
	relationship type home_other_data_account{
		account[1]: ACCOUNT_TABLE,
		homeOtherData[0-N]: HOME_OTHER_GROUP_DATA_TABLE
	}
	relationship type home_other_data_group{
		group[0-N]: GROUP_TABLE,
		homeOtherData[1]: HOME_OTHER_GROUP_DATA_TABLE
	}
	
	
	relationship type commentby_account{
		account[0-N]: ACCOUNT_TABLE,
		comment[1]: COMMENT_BY_ME_TABLE
	}
	relationship type commentby_data_account{
		account[0-N]: ACCOUNT_TABLE,
		commentData[1]: COMMENT_BY_ME_DATA_TABLE
	}
	relationship type repost_account{
		account[0-N]: ACCOUNT_TABLE,
		repost[1]: REPOST_TABLE
	}
	relationship type repost_data_account{
		account[0-N]: ACCOUNT_TABLE,
		repostData[1]: REPOSTS_DATA_TABLE
	}
	relationship type mention_account{
		account[0-N]: ACCOUNT_TABLE,
		mention[1]: MENTION_COMMENTS_TABLE
	}
	relationship type mention_data_table{
		account[0-N]: ACCOUNT_TABLE,
		mentionData[1]: MENTION_COMMENTS_DATA_TABLE
	}
	relationship type comment_account{
		account[0-N]: ACCOUNT_TABLE,
		comment[1]: COMMENTS_TABLE
	}
	relationship type comment_account{
		account[0-N]: ACCOUNT_TABLE,
		commentData[1]: COMMENTS_DATA_TABLE
	}
	relationship type dms_account{
		account[0-N]: ACCOUNT_TABLE,
		dms[1]: COMMENTS_TABLE
	}
	
	relationship type favourite_account{
		compte[0-N]: ACCOUNT_TABLE,
		favoris[1]: FAVOURITE_TABLE
	}
	relationship type favourite_data_account{
		compte[0-N]: ACCOUNT_TABLE,
		favoris[1]: FAVOURITE_TABLE
	}
	relationship type status_data_account{
		compte[0-N]: ACCOUNT_TABLE,
		status[1]: MYSTATUS_DATA_TABLE
	}	
	relationship type status_account{
		compte[0-N]: ACCOUNT_TABLE,
		status[1]: MYSTATUS_TABLE
	}
	relationship type draft_account{
		compte[0-N]: ACCOUNT_TABLE,
		draft[1]: DRAFT_TABLE
	}	
	relationship type atuser_account{
		compte[0-N]: ACCOUNT_TABLE,
		user[1]: ATUSERS_TABLE
	}
	relationship type atuser_account2{
		compte[0-N]: ACCOUNT_TABLE,
		user[1]: ATUSERS_TABLE
	}	
	relationship type topic_account{
		compte[0-N]: ACCOUNT_TABLE,
		topics[1]: TOPICS_TABLE
	}
	relationship type notification_account{
		compte[0-N]: ACCOUNT_TABLE,
		notification[1]: NOTIFICATION_TABLE
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
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
		}
		
		table HOME_TABLE{
			columns{
				id,
				accountid,
				timelinedata,
				recent_group_id
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
		}
	
		table HOME_DATA_TABLE{
			columns{
				id,
				accountid,
				mblogid,
				jsondata
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
		}
			
		table HOME_OTHER_GROUP_TABLE{
			columns{
				id,
				accountid,
				groupid,
				timelinedata
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
				toGroup : groupid -> GROUP_TABLE.id
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
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
				toGroup : groupid -> GROUP_TABLE.id
			}	
		}
		
		
		table COMMENTS_TABLE{
			columns{
				id, 
	  			accountid,
	  			timelinedata 
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
		}
			
		table COMMENTS_DATA_TABLE{
			columns{
				id ,
		  		accountid,
		  		mblogid,
		  		jsondata 
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
		}
		
		
		table REPOST_TABLE{
			columns{
				id,
				accountid,
		  		timelinedata	
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
		}
		
	
		table REPOSTS_DATA_TABLE{
		  	columns{
		  		id,
		  		accountid,
		  		mblogid,
		  		jsondata
		  	}
		  	references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
		}
		
		table MENTION_COMMENTS_TABLE{
			  columns{
			  	id,
			  	accountid,
			  	timelinedata 
			  }
			  references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
		}
		
		table MENTION_COMMENTS_DATA_TABLE{
			  columns{
			  	id,
			  	accountid,
			  	mblogid,
			  	jsondata 
			  }
			  references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
	  
		}
		
		
		table COMMENT_BY_ME_TABLE{
			columns{
				id,
				accountid,
				timelinedata
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
    	}
    
	    table COMMENT_BY_ME_DATA_TABLE{
			columns{
				id,
				accountid,
				mblogid,
				jsondata
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
	    }
     
	    table DMS_TABLE{
			columns {
				id,
				accountid,
				mblogid,
				jsondata
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}

	     }
	     
	     table FAVOURITE_TABLE{
			columns {
				id,
				accountid,
				timelinedata,
				page
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
		
	     }
    
	    table FAVOURITE_DATA_TABLE{
			columns {
				id,
				accountid,
				mblogid,
				jsondata
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
		}
     
     	table MYSTATUS_TABLE{
			columns {
				id,
				accountid,
				timelinedata				
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
		 }
    
	    table MYSTATUS_DATA_TABLE{
			columns {
				id,
				accountid,
				mblogid,
				jsondata
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
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
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
			}
		  }

		table ATUSERS_TABLE{
			columns {
				id,
				userid,
				accountid,
				jsondata
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
				toUser : userid -> ACCOUNT_TABLE.uid
			}
		}

	    table TOPICS_TABLE{
			columns {
				id, 
				accountid,
				topic_name			
			}
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
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
			references{
				toAccount : accountid -> ACCOUNT_TABLE.uid
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
	conceptualSchema.NOTIFICATION_TABLE(id,accountid,msgid,type_) -> relSchema.NOTIFICATION_TABLE(id,accountid,msgid,type_),
	//relations	
	conceptualSchema.group_account.group -> relSchema.GROUP_TABLE.toAccount,
	conceptualSchema.home_account.home -> relSchema.HOME_TABLE.toAccount,
	conceptualSchema.home_data_account.account -> relSchema.HOME_DATA_TABLE.toAccount,
	conceptualSchema.home_other_account.homeOther -> relSchema.HOME_OTHER_GROUP_TABLE.toAccount,
	conceptualSchema.home_other_group.homeOther -> relSchema.HOME_OTHER_GROUP_TABLE.toGroup,
	conceptualSchema.home_other_data_account.homeOtherData -> relSchema.HOME_OTHER_GROUP_DATA_TABLE.toAccount,
	conceptualSchema.home_other_data_group.homeOtherData -> relSchema.HOME_OTHER_GROUP_DATA_TABLE.toGroup,
	conceptualSchema.commentby_account.comment -> relSchema.COMMENT_BY_ME_TABLE.toAccount,
	conceptualSchema.commentby_data_account.commentData -> relSchema.COMMENT_BY_ME_DATA_TABLE.toAccount,
	conceptualSchema.comment_account.comment -> relSchema.COMMENTS_TABLE.toAccount,
	conceptualSchema.comment_account.commentData -> relSchema.COMMENTS_DATA_TABLE.toAccount,
	conceptualSchema.mention_account.mention -> relSchema.MENTION_COMMENTS_TABLE.toAccount,
	conceptualSchema.mention_data_table.mentionData -> relSchema.MENTION_COMMENTS_DATA_TABLE.toAccount,
	conceptualSchema.repost_account.repost -> relSchema.REPOST_TABLE.toAccount,
	conceptualSchema.repost_data_account.repostData -> relSchema.REPOSTS_DATA_TABLE.toAccount,
	conceptualSchema.dms_account.dms -> relSchema.DMS_TABLE.toAccount,
	conceptualSchema.favourite_account.favoris-> relSchema.FAVOURITE_TABLE.toAccount,
	conceptualSchema.favourite_data_account.favoris-> relSchema.FAVOURITE_DATA_TABLE.toAccount,
	conceptualSchema.status_account.status -> relSchema.MYSTATUS_TABLE.toAccount,
	conceptualSchema.status_data_account.status -> relSchema.MYSTATUS_DATA_TABLE.toAccount,
	conceptualSchema.draft_account.draft -> relSchema.DRAFT_TABLE.toAccount,
	conceptualSchema.atuser_account.user -> relSchema.ATUSERS_TABLE.toAccount,
	conceptualSchema.atuser_account2.user -> relSchema.ATUSERS_TABLE.toUser,
	conceptualSchema.topic_account.topics -> relSchema.TOPICS_TABLE.toAccount,
	conceptualSchema.notification_account.notification -> relSchema.NOTIFICATION_TABLE.toAccount	
}

databases {
	
	sqlite mydb {
		host: "localhost"
		port: 0
		dbname : "weibo"
	}
	
}




