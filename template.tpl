___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "TikTok Events Tag",
  "categories": [
    "ADVERTISING",
    "ANALYTICS",
    "CONVERSIONS",
    "MARKETING",
    "REMARKETING"
  ],
  "brand": {
    "id": "github.com_ayruz-data-marketing",
    "displayName": "Ayruz-data-marketing"
  },
  "description": "Tag that send the event data to TikTok Events API.",
  "containerContexts": [
    "SERVER"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "pixelId",
    "displayName": "TikTok Pixel ID",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ],
    "help": "Set a TikTok Pixel ID."
  },
  {
    "type": "TEXT",
    "name": "accessToken",
    "displayName": "Access Token",
    "simpleValueType": true,
    "help": "Set your TikTok API Access Token.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "RADIO",
    "name": "eventType",
    "displayName": "Event Name Setup Method",
    "radioItems": [
      {
        "value": "standard",
        "displayValue": "Standard",
        "subParams": [
          {
            "type": "SELECT",
            "name": "eventName",
            "macrosInSelect": false,
            "selectItems": [
              {
                "value": "ViewContent",
                "displayValue": "View Content"
              },
              {
                "value": "ClickButton",
                "displayValue": "Click Button"
              },
              {
                "value": "Search",
                "displayValue": "Search"
              },
              {
                "value": "AddToWishlist",
                "displayValue": "Add to Wishlist"
              },
              {
                "value": "AddToCart",
                "displayValue": "Add to Cart"
              },
              {
                "value": "InitiateCheckout",
                "displayValue": "Initiate Checkout"
              },
              {
                "value": "AddPaymentInfo",
                "displayValue": "Add Payment Info"
              },
              {
                "value": "CompletePayment",
                "displayValue": "Complete Payment"
              },
              {
                "value": "PlaceAnOrder",
                "displayValue": "Place an Order"
              },
              {
                "value": "Contact",
                "displayValue": "Contact"
              },
              {
                "value": "Download",
                "displayValue": "Download"
              },
              {
                "value": "SubmitForm",
                "displayValue": "Submit Form"
              },
              {
                "value": "CompleteRegistration",
                "displayValue": "Complete Registration"
              },
              {
                "value": "Subscribe",
                "displayValue": "Subscribe"
              }
            ],
            "simpleValueType": true,
            "alwaysInSummary": true,
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "displayName": "Event Name",
            "defaultValue": "ViewContent"
          }
        ]
      },
      {
        "value": "inherit",
        "subParams": [],
        "displayValue": "Inherit from client"
      },
      {
        "value": "custom",
        "subParams": [
          {
            "type": "TEXT",
            "name": "eventNameCustom",
            "displayName": "",
            "simpleValueType": true
          }
        ],
        "displayValue": "Custom"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "standard"
  },
  {
    "type": "TEXT",
    "name": "testEventCode",
    "displayName": "Test Event Code",
    "simpleValueType": true,
    "help": ""
  },
  {
    "displayName": "Server Event Data Override",
    "name": "serverEventDataListGroup",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "name": "serverEventDataList",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "event_id",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "SELECT",
            "selectItems": [
              {
                "value": "timestamp",
                "displayValue": "Timestamp"
              },
              {
                "value": "event_id",
                "displayValue": "Event ID"
              },
              {
                "value": "url",
                "displayValue": "Url"
              },
              {
                "value": "referrer",
                "displayValue": "Referrer"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ],
    "help": "See \u003ca href\u003d\"https://ads.tiktok.com/marketing_api/docs?rid\u003d959icq5stjr\u0026id\u003d1701890979375106\" target\u003d\"_blank\"\u003ethis documentation\u003c/a\u003e for more details on what data parameters you can override."
  },
  {
    "displayName": "User Data",
    "name": "userDataListGroup",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "name": "userDataList",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "email",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "SELECT",
            "selectItems": [
              {
                "value": "email",
                "displayValue": "Email"
              },
              {
                "value": "phone_number",
                "displayValue": "Phone"
              },
              {
                "value": "external_id",
                "displayValue": "External ID"
              },
              {
                "value": "ip",
                "displayValue": "Client IP address"
              },
              {
                "value": "user_agent",
                "displayValue": "Client user agent"
              },
              {
                "value": "ttclid",
                "displayValue": "ttclid"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ],
    "help": "See \u003ca href\u003d\"https://ads.tiktok.com/marketing_api/docs?rid\u003d959icq5stjr\u0026id\u003d1701890979375106\" target\u003d\"_blank\"\u003ethis documentation\u003c/a\u003e for more details on what user data parameters you can add to the call. If the documentation requires the parameter to be hashed, you \u003cstrong\u003emust\u003c/strong\u003e hash it with SHA256, or the tag will do this automatically before sending the event to TikTok."
  },
  {
    "displayName": "Properties",
    "name": "customDataListGroup",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "name": "customDataList",
        "simpleTableColumns": [
          {
            "valueValidators": [
              {
                "type": "NON_EMPTY"
              }
            ],
            "defaultValue": "currency",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "SELECT",
            "selectItems": [
              {
                "value": "contents",
                "displayValue": "Contents"
              },
              {
                "value": "currency",
                "displayValue": "Currency"
              },
              {
                "value": "value",
                "displayValue": "Value"
              },
              {
                "value": "description",
                "displayValue": "Description"
              },
              {
                "value": "query",
                "displayValue": "Query"
              }
            ]
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ],
    "help": "See \u003ca href\u003d\"https://ads.tiktok.com/marketing_api/docs?rid\u003d959icq5stjr\u0026id\u003d1701890979375106\" target\u003d\"_blank\"\u003ethis documentation\u003c/a\u003e for more details on what properties you can add to the event."
  }
]


___SANDBOXED_JS_FOR_SERVER___

const getAllEventData = require('getAllEventData');
const sendHttpRequest = require('sendHttpRequest');
const setCookie = require('setCookie');
const getRequestHeader = require('getRequestHeader');
const getCookieValues = require('getCookieValues');
const getTimestampMillis = require('getTimestampMillis');
const parseUrl = require('parseUrl');
const JSON = require('JSON');
const log = require('logToConsole');
const getType = require('getType');
const sha256Sync = require('sha256Sync');
const makeString = require('makeString');
const decodeUriComponent = require('decodeUriComponent');

const eventData = getAllEventData();
const url = eventData.page_location || getRequestHeader('referer');

let ttclid = getCookieValues('ttclid')[0];
if (!ttclid) ttclid = eventData.ttclid;

if (url) {
    const urlParsed = parseUrl(url);

    if (urlParsed && urlParsed.searchParams.ttclid) {
        ttclid = decodeUriComponent(urlParsed.searchParams.ttclid);
    }
}

const urlToCall = 'https://business-api.tiktok.com/open_api/v1.2/pixel/track/';
let postBody = mapEventData(eventData, data);

sendHttpRequest(urlToCall, (statusCode, headers, body) => {
        log(JSON.stringify({
            'Name': 'TikTok',
            'Type': 'Response',
            'EventName': postBody.event,
            'ResponseStatusCode': statusCode,
            'ResponseHeaders': headers,
            'ResponseBody': body,
        }));

    if (statusCode >= 200 && statusCode < 400) {
        if (ttclid) {
            setCookie('ttclid', ttclid, {
                domain: 'auto',
                path: '/',
                samesite: 'Lax',
                secure: true,
                'max-age': 2592000,
                httpOnly: false
            });
        }

        data.gtmOnSuccess();
    } else {
        data.gtmOnFailure();
    }
}, {headers: {'Content-Type': 'application/json', 'Access-Token': data.accessToken}, method: 'POST'}, JSON.stringify(postBody));

function mapEventData(eventData, data) {
    let mappedData = {
        "pixel_code": data.pixelId,
        "event": getEventName(eventData, data),
        "timestamp": makeString(getTimestampMillis()),
        "context": {
            "page": {
                "url": eventData.page_location
            },
            "user_agent": eventData.user_agent,
            "ip": eventData.ip_override || eventData.ip_adress || eventData.ip,
        }
    };

    if (ttclid) {
        mappedData.context.ad = {"callback": ttclid};
    }

    if (data.testEventCode){
        mappedData.test_event_code = data.testEventCode;
    }

    mappedData = getServerEventData(eventData, data, mappedData);
    mappedData = getUserData(eventData, mappedData);
    mappedData = getPropertiesData(eventData, mappedData);
    mappedData = hashEventData(mappedData);

    return mappedData;
}

function getEventName(eventData, data) {
    if (data.eventType === 'inherit') {
        let eventName = eventData.event_name;

        let gaToEventName = {
            'page_view': 'PageView',
            "click": "ClickButton",
            "download": "Download",
            "file_download": "Download",
            "complete_registration": "CompleteRegistration",
            "gtm.dom": "PageView",
            'add_payment_info': 'AddPaymentInfo',
            'add_to_cart': 'AddToCart',
            'add_to_wishlist': 'AddToWishlist',
            'sign_up': 'CompleteRegistration',
            'begin_checkout': 'InitiateCheckout',
            'generate_lead': 'SubmitForm',
            'purchase': 'PlaceAnOrder',
            'search': 'Search',
            'view_item': 'ViewContent',

            'contact': 'Contact',
            'find_location': 'Search',
            'submit_application': 'Subscribe',
            'subscribe': 'Subscribe',

            'gtm4wp.addProductToCartEEC': 'AddToCart',
            'gtm4wp.productClickEEC': 'ViewContent',
            'gtm4wp.checkoutOptionEEC': 'InitiateCheckout',
            'gtm4wp.checkoutStepEEC': 'AddPaymentInfo',
            'gtm4wp.orderCompletedEEC': 'PlaceAnOrder'
        };

        if (!gaToEventName[eventName]) {
            return eventName;
        }

        return gaToEventName[eventName];
    }

    return data.eventType === 'custom' ? data.eventNameCustom : data.eventName;
}

function getServerEventData(eventData, data, mappedData) {
    let serverEventDataList = {};

    if (eventData.event_id) serverEventDataList.event_id = eventData.event_id;
    else if (eventData.transaction_id) serverEventDataList.event_id = eventData.transaction_id;

    if (eventData.page_referrer) serverEventDataList.referrer = eventData.page_referrer;

    if (data.serverEventDataList) {
        data.serverEventDataList.forEach(d => {
            serverEventDataList[d.name] = d.value;
        });
    }

    if (serverEventDataList) {
        if (serverEventDataList.url) mappedData.context.page.url = serverEventDataList.url;
        if (serverEventDataList.referrer) mappedData.context.page.referrer = serverEventDataList.referrer;

        if (serverEventDataList.timestamp) mappedData.timestamp = serverEventDataList.timestamp;
        if (serverEventDataList.event_id) mappedData.event_id = serverEventDataList.event_id;
    }

    return mappedData;
}

function getUserData(eventData, mappedData) {
    let userDataList = {};

    if (eventData.external_id) userDataList.external_id = eventData.external_id;
    else if (eventData.user_id) userDataList.external_id = eventData.user_id;
    else if (eventData.userId) userDataList.external_id = eventData.userId;

    if (eventData.email) userDataList.email = eventData.email;
    else if (eventData.user_data && eventData.user_data.email_address) userDataList.email = eventData.user_data.email_address;

    if (eventData.phone) userDataList.phone_number = eventData.phone;
    else if (eventData.user_data && eventData.user_data.phone_number) userDataList.phone_number = eventData.user_data.phone_number;

    if (data.userDataList) {
        data.userDataList.forEach(d => {
            userDataList[d.name] = d.value;
        });
    }

    if (userDataList) {
        mappedData.context.user = {};

        if (userDataList.external_id) mappedData.context.user.external_id = userDataList.external_id;
        if (userDataList.phone_number) mappedData.context.user.phone_number = userDataList.phone_number;
        if (userDataList.email) mappedData.context.user.email = userDataList.email;
    }

    return mappedData;
}

function getPropertiesData(eventData, mappedData) {
    let customDataList = {};

    if (eventData['x-ga-mp1-ev']) customDataList.value = eventData['x-ga-mp1-ev'];
    else if (eventData['x-ga-mp1-tr']) customDataList.value = eventData['x-ga-mp1-tr'];
    else if (eventData.value) customDataList.value = eventData.value;

    if (eventData.currency) customDataList.currency = eventData.currency;
    if (eventData.description) customDataList.description = eventData.description;
    if (eventData.query) customDataList.query = eventData.query;

    if (eventData.items && eventData.items[0]) {
        customDataList.contents = [];

        eventData.items.forEach((d,i) => {
            let item = {};

            if (d.item_id) item.content_id = d.item_id;
            else if (d.id) item.content_id = d.id;

            if (d.content_type) item.content_type = d.content_type;
            else if (d.item_category) item.content_type = d.item_category;

            if (d.quantity) item.quantity = d.quantity;
            if (d.price) item.price = d.price;

            customDataList.contents.push(item);
        });
    }

    if (data.customDataList) {
        data.customDataList.forEach(d => {
            customDataList[d.name] = d.value;
        });
    }

    if (customDataList) {
        mappedData.properties = {};

        if (customDataList.contents) mappedData.properties.contents = customDataList.contents;
        if (customDataList.currency) mappedData.properties.currency = customDataList.currency;
        if (customDataList.description) mappedData.properties.description = customDataList.description;
        if (customDataList.query) mappedData.properties.query = customDataList.query;
        if (customDataList.value) mappedData.properties.value = customDataList.value;
    }

    return mappedData;
}

function hashEventData(mappedData) {
    if (mappedData.context.user) {
        for (let key in mappedData.context.user) {
            if (key === 'external_id' || key === 'phone_number' || key === 'email') {
                mappedData.context.user[key] = hashData(mappedData.context.user[key]);
            }
        }
    }

    return mappedData;
}

function hashData(value) {
    if (!value) {
        return value;
    }

    const type = getType(value);

    if (type === 'undefined' || value === 'undefined') {
        return undefined;
    }

    if (type === 'object') {
        return value.map(val => {
            return hashData(val);
        });
    }

    if (isHashed(value)) {
        return value;
    }

    return sha256Sync(makeString(value).trim().toLowerCase(), {outputEncoding: 'hex'});
}

function isHashed(value) {
    if (!value) {
        return false;
    }

    return makeString(value).match('^[A-Fa-f0-9]{64}$') !== null;
}


___SERVER_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "read_event_data",
        "versionId": "1"
      },
      "param": [
        {
          "key": "eventDataAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "set_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedCookies",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "ttclid"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "send_http",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedUrls",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://business-api.tiktok.com/"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "cookieNames",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ttclid"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "all"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_request",
        "versionId": "1"
      },
      "param": [
        {
          "key": "headerWhitelist",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "headerName"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "referer"
                  }
                ]
              }
            ]
          }
        },
        {
          "key": "headersAllowed",
          "value": {
            "type": 8,
            "boolean": true
          }
        },
        {
          "key": "requestAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "headerAccess",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "queryParameterAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []
setup: ''


___NOTES___

Created on 6/6/2022, 10:52:08 PM


