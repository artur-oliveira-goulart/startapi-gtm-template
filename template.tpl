___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-platform/tag-manager/templates/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "START API — WhatsApp no Site",
  "description": "Rastreia cliques em botões de WhatsApp e envios de formulários para enviar eventos ao Meta Pixel via START API. Basta informar o Site Token.",
  "securityGroups": [],
  "id": "cvt_startapi_wa_site",
  "type": "TAG",
  "version": 1,
  "brand": {
    "displayName": "START API",
    "thumbnail": ""
  },
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "siteToken",
    "displayName": "Site Token",
    "simpleValueType": true,
    "help": "Cole aqui o Site Token gerado em Conversões → WhatsApp no Site → Configurações no painel START API.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require('injectScript');

const scriptUrl = 'https://startapibackend.appsstart.com.br/public/start-tag.js?token=' + encodeUriComponent(data.siteToken);

injectScript(scriptUrl, data.gtmOnSuccess, data.gtmOnFailure, scriptUrl);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://startapibackend.appsstart.com.br/"
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
  }
]
