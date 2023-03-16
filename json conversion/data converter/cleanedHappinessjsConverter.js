const fs = require('fs');
const Papa = require('papaparse');

// read the CSV file
const csvData = fs.readFileSync('cleanedHappiness.csv', 'utf8');

// parse the CSV data using Papa Parse
const parsedData = Papa.parse(csvData, { header: true }).data;

// write the JavaScript file
const jsData = `var data = ${JSON.stringify(parsedData, null, 2)};\n\nmodule.exports = data;`;
fs.writeFile('data.js', jsData, err => {
  if (err) {
    console.error(err);
    return;
  }
  console.log('Data has been saved to data.js');
});