#!/bin/bash

curl -u es_admin -XDELETE http://localhost:9200/logstash-storms

curl -u es_admin -XPUT http://localhost:9200/logstash-storms -d '{
  "mappings" : {
      "storms" : {
        "properties" : {
          "@timestamp" : {
            "type" : "date",
            "format" : "strict_date_optional_time||epoch_millis"
          },
          "@version" : {
            "type" : "string"
          },
          "BEGIN_AZIMUTH" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "BEGIN_DATE_TIME" : {
            "type" : "date",
            "format": "dd-MMM-yy HH:mm:ss"
          },
          "BEGIN_DATE_TIME_FINAL" : {
            "type" : "date",
            "format": "dd-MMM-yy HH:mm:ss Z||dd-MMM-yy HH:mm:ss z"
          },
          "BEGIN_DAY" : {
            "type" : "integer"
          },
          "BEGIN_LOCATION" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "BEGIN_LAT" : {
            "type" : "float"
          },
          "BEGIN_LON" : {
            "type" : "float"
          },
          "BEGIN_RANGE" : {
            "type" : "integer"
          },
          "BEGIN_TIME" : {
            "type" : "long"
          },
          "BEGIN_YEARMONTH" : {
            "type" : "long"
          },
          "CATEGORY" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "CZ_FIPS" : {
            "type" : "long"
          },
          "CZ_NAME" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "CZ_TIMEZONE" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "CZ_TYPE" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "DAMAGE_CROPS" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "DAMAGE_PROPERTY" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "DATA_SOURCE" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "DEATHS_DIRECT" : {
            "type" : "double"
          },
          "DEATHS_INDIRECT" : {
            "type" : "double"
          },
          "END_AZIMUTH" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "END_DATE_TIME" : {
            "type" : "date",
            "format": "dd-MMM-yy HH:mm:ss"
          },
          "END_DATE_TIME_FINAL" : {
            "type" : "date",
            "format": "dd-MMM-yy HH:mm:ss Z||dd-MMM-yy HH:mm:ss z"
          },
          "END_DAY" : {
            "type" : "integer"
          },
          "END_LAT" : {
            "type" : "float"
          },
          "END_LOCATION" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "END_LON" : {
            "type" : "float"
          },
          "END_RANGE" : {
            "type" : "integer"
          },
          "END_TIME" : {
            "type" : "long"
          },
          "END_YEARMONTH" : {
            "type" : "long"
          },
          "EPISODE_ID" : {
            "type" : "double"
          },
          "EPISODE_NARRATIVE" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "EVENT_ID" : {
            "type" : "double"
          },
          "EVENT_NARRATIVE" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "EVENT_TYPE" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "FLOOD_CAUSE" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "INJURIES_DIRECT" : {
            "type" : "double"
          },
          "INJURIES_INDIRECT" : {
            "type" : "double"
          },
          "MAGNITUDE" : {
            "type" : "double"
          },
          "MAGNITUDE_TYPE" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "MONTH_NAME" : {
            "type" : "string"
          },
          "SOURCE" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "STATE" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "STATE_FIPS" : {
            "type" : "double"
          },
          "TOR_F_SCALE" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "TOR_LENGTH" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "TOR_OTHER_CZ_FIPS" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "TOR_OTHER_CZ_NAME" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "TOR_OTHER_CZ_STATE" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "TOR_OTHER_WFO" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "TOR_WIDTH" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "WFO" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "FULLYEAR" : {
            "type" : "long"
          },
          "host" : {
            "type" : "string"
          },
          "location" : {
             "type": "geo_point",
             "geohash": "true",
             "lat_lon": "true"
          },
          "end_location" : {
             "type": "geo_point",
             "geohash": "true",
             "lat_lon": "true"
          },
          "timezone1" : {
            "type" : "string",
            "index": "not_analyzed"
          },
          "timezone2" : {
            "type" : "string",
            "index": "not_analyzed"
          },
          "sign" : {
            "type" : "string",
            "index": "not_analyzed"
          },
          "message" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "path" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          },
          "type" : {
            "type" : "string",
            "fields": {
                "raw": {
                   "type": "string",
                   "index": "not_analyzed"
		}
	    }
          }
        }
      }
  }
}
'

exit
