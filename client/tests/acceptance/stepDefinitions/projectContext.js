const { Given, When, Then } = require('@cucumber/cucumber');

// import expect for assertion
const { expect } = require('@playwright/test');

// import assert
const assert = require('assert');


Given(
  'user {string} has created the following projects:',
  async function (user, dataTable) {
    const projects = dataTable.hashes();
    let result;
    for (const project of projects) {
      result = await createProject(user, project);
    }
    assert.strictEqual(result, true, 'Cannot create project');
  }
);
