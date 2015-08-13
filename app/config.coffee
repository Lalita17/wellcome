module.exports = 
  auth_mode: 'oauth'
  panoptes:
    appID: '324bbe871acddc1457878b111a6772e25556928644c5ef9ee1784035ad0b0554'
    host: 'https://panoptes.zooniverse.org'
  panoptes_staging:
    appID: '535759b966935c297be11913acee7a9ca17c025f9f15520e7504728e71110a27'
    host: 'https://panoptes-staging.zooniverse.org'
  talk:
    appID: '324bbe871acddc1457878b111a6772e25556928644c5ef9ee1784035ad0b0554'
    host: 'https://talk.zooniverse.org'
    root: ''
  tasks:
    health: 
      label: 'Environmental Health'
      tools: [{
        label: 'What is the environmental health issue?'
        value: 'issue'
        required: true
        subtasks: [{
          label: 'Who did it affect?'
          value: 'who'
        },{
          label: 'How did it affect them?'
          value: 'how'
        },{
          label: 'Who or what caused it?'
          value: 'cause'
        },{
          label: 'Was anything done about it?'
          value: 'action'
        },{
          label: 'Is there any place information?'
          value: 'place'
        }]
      }]
    work: 
      label: 'Work'
      tools: [{
        label: 'What type of work is described?'
        value: 'type'
        required: true
        subtasks: [{
          label: 'What health issue, or potential hazard, is it causing?'
          value: 'issue'
          subtasks: [{
            label: 'Did it affect anyone?'
            value: 'who'
          },{
            label: 'Who or what caused it?'
            value: 'cause'
          },{
            label: 'Was anything done about it?'
            value: 'action'
          }]
        },{
          label: 'Is there any place information?'
          value: 'place'
        }]
      }]
    disease:
      label: 'Disease'
      tools: [{
        label: 'Is a specific disease or type of disease named?'
        value: 'type'
        required: true
        subtasks: [{
          label: 'Who did it affect?'
          value: 'who'
        },{
          label: 'How did it affect them?'
          value: 'how'
        },{
          label: 'Who or what caused it?'
          value: 'cause'
        },{
          label: 'Was anything done about it?'
          value: 'action'
        },{
          label: 'Is there any place information?'
          value: 'place'
        }]
      }]
    food:
      label: 'Food'
      tools: [{
        label: 'What is the food or drink?'
        value: 'food'
        required: true
        subtasks: [{
          label: 'What is wrong with it?'
          value: 'issue'
          subtasks: [{
            label: 'Did it affect anyone?'
            value: 'who'
          },{
            label: 'Who or what caused it?'
            value: 'cause'
          },{
            label: 'Was anything done about it?'
            value: 'action'
          }]
        },{
          label: 'Is there any place information?'
          value: 'place'
        }]
      }]
    housing:
      label: 'Housing'
      tools: [{
        label: 'What is the housing problem?'
        value: 'type'
        required: true
        subtasks: [{
          label: 'Did it cause a health issue?'
          value: 'issue'
          subtasks: [{
            label: 'Did it affect anyone?'
            value: 'who'
          },{
            label: 'Did anyone cause it?'
            value: 'cause'
          },{
            label: 'Was anything done about it?'
            value: 'action'
          }]
        },{
          label: 'Is there any place information?'
          value: 'place'
        }]
      }]